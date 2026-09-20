#!/usr/bin/env bash
# Generate an image through the COMP4020 proxy's OpenAI-shaped image endpoint.
#
#   ./scripts/gen-image.sh --token sk-... "a two-ink risograph print" out.png
#   ./scripts/gen-image.sh -t sk-... --models
#   ./scripts/gen-image.sh --token-file ~/.comp4020-key --models
#   ANTHROPIC_AUTH_TOKEN=sk-... ./scripts/gen-image.sh "a prompt" out.png
#
# The key comes from --token, --token-file, or $ANTHROPIC_AUTH_TOKEN, in that
# order. --token puts the key in your shell history and in `ps` output; prefer
# --token-file or the environment variable on a shared machine.
#
# Drafted, never executed: the agent shell has no key and cannot reach the host.
set -euo pipefail

host="${STRPROXY_HOST:-https://strproxy.comp.anu.edu.au}"
model="${IMAGE_MODEL:-flux-schnell}"
token="${ANTHROPIC_AUTH_TOKEN:-}"
list_models=false
args=()

usage() {
  sed -n '2,12p' "$0" | sed 's/^# \{0,1\}//'
  exit "${1:-0}"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -t | --token)
      token="${2:?--token needs a value}"
      shift 2
      ;;
    --token-file)
      file="${2:?--token-file needs a path}"
      [[ -r "$file" ]] || { echo "cannot read token file: $file" >&2; exit 1; }
      token="$(tr -d '[:space:]' <"$file")"
      shift 2
      ;;
    -m | --model)
      model="${2:?--model needs a value}"
      shift 2
      ;;
    --host)
      host="${2:?--host needs a value}"
      shift 2
      ;;
    --models)
      list_models=true
      shift
      ;;
    -h | --help)
      usage 0
      ;;
    --)
      shift
      args+=("$@")
      break
      ;;
    -*)
      echo "unknown option: $1" >&2
      usage 1 >&2
      ;;
    *)
      args+=("$1")
      shift
      ;;
  esac
done

if [[ -z "$token" ]]; then
  echo "no key — pass --token, --token-file, or set ANTHROPIC_AUTH_TOKEN." >&2
  exit 1
fi

request() { # request <url> [curl args...]
  local url="$1"; shift
  local body status
  body=$(curl -sS -w '\n%{http_code}' "$url" -H "Authorization: Bearer $token" "$@") || {
    echo "could not reach $host — check the network, the host and the key." >&2
    exit 1
  }
  status="${body##*$'\n'}"
  body="${body%$'\n'*}"
  if [[ "$status" != 2* ]]; then
    echo "$host returned HTTP $status:" >&2
    echo "$body" >&2
    exit 1
  fi
  printf '%s' "$body"
}

if [[ "$list_models" == true ]]; then
  request "$host/api/images/models" | jq .
  exit 0
fi

prompt="${args[0]:-}"
out="${args[1]:-generated.png}"
[[ -n "$prompt" ]] || { echo "no prompt given." >&2; usage 1 >&2; }

response=$(request "$host/api/images/generations" \
  -H "content-type: application/json" \
  -d "$(jq -n --arg m "$model" --arg p "$prompt" '{model: $m, prompt: $p}')")

url=$(jq -r '.data[0].url // empty' <<<"$response")
if [[ -z "$url" ]]; then
  echo "no image url in the response:" >&2
  jq . <<<"$response" >&2
  exit 1
fi

curl -sfS "$url" -o "$out" || { echo "generated, but the download failed: $url" >&2; exit 1; }
echo "wrote $out"
echo "next: crop to the target size, convert, and write alt text describing what"
echo "      was actually generated (see docs/imagery-plan.md §4)."
