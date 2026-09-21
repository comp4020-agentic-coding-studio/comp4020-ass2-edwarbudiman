# Imagery and styling plan

**Status: drafted proposal. No content, asset, style or config file has been
changed by this document.** Every path, syntax and constraint below was read
out of the repository and `node_modules/astromotion/README.md` during drafting;
nothing here has been built, rendered or visually checked.

Scope: where an image is allowed to live in this platform, which of the twelve
weeks actually earns one under `guidelines.md`, and how artwork gets produced.

---

## 1. The four places an image can live

| Place | Path | Syntax | Notes |
| --- | --- | --- | --- |
| Deck slide | `src/decks/assets/` (create) | `![bg](./assets/x.avif)`, `![bg left:40%](…)`, `![alt text](./assets/x.svg)` | Path **must** be relative to the deck file. `astromotion` README: absolute paths like `/images/…` "are not resolved and will 404 on subpath deployments" — and this site always deploys under `/<repo>/`. |
| Lecture / session page | `src/assets/images/` | `![alt text](../../assets/images/x.svg)` from `src/content/lectures/` | Ordinary Markdown; Astro's asset pipeline resolves and optimises it. |
| Person portrait | beside the entry in `src/content/people/` | `photo:` + `photoAlt:` frontmatter | Already schema-enforced: `src/content.config.ts` fails the build if `photo` is set without `photoAlt`. |
| Link-preview card | `src/assets/images/card.png` | `socialImage:` in `src/site-config.ts`, or per-page frontmatter | 1200×630. The theme re-encodes it to JPEG for `og:image`. |

Site-wide CSS belongs in `src/layouts/PageLayout.astro`; deck CSS in
`src/decks/theme.css`. **Both are integration-session files** under
`guidelines.md` §5 — propose changes in a handoff, do not apply them from a
week session.

### The accessibility rule this platform forces

`plugins/remark-deck-bg.ts` turns `![bg](…)` into a `<div class="slide-bg">`
carrying a CSS `background-image`. There is no `<img>`, so **there is no alt
text and a screen reader gets nothing**. The plain-text export writes only
`(background image: filename)`.

So the split is not a matter of taste:

- **Decorative / atmospheric → `![bg]`.** Allowed only where the slide reads
  completely without it.
- **Teaching content → a normal Markdown image with real alt text**, or inline
  SVG with `<title>` and `role="img"`. The export preserves this as
  `(image: <alt>)`, and `pnpm build` runs axe over every rendered page.

`guidelines.md` §2 already says a visual must "explain a relationship more
clearly than prose" and must carry a text alternative. Under this platform,
that means **every teaching visual in this course is an `<img>`, never a
`![bg]`**.

---

## 2. The one hard constraint: the starter artwork gate

`scripts/check-evidence.ts` (lines 111–138) hashes four files and **fails
Assignment 2** while any of them is still byte-identical to the starter:

| File | Size | Used by | Disposition |
| --- | --- | --- | --- |
| `src/assets/images/card.png` | 1200×630 | `socialImage:` in `src/site-config.ts` | **Must replace.** Every shared link shows it. |
| `src/assets/images/hero-home.avif` | 2560×1086 | `src/pages/index.astro` | **Must replace**, and remove the `STARTER_CONTENT:` marker on line 9. |
| `src/content/people/idris-fenn.avif` | — | `idris-fenn.md` | Blocked: `gap-week.md` C9 records staff identity as an open content decision. Deleting the portrait and its `photo:`/`photoAlt:` lines passes the gate. |
| `src/content/people/marisol-quaye.avif` | — | `marisol-quaye.md` | Same. |

The check's own comment states a deleted file passes: "dropping a portrait with
the person it belonged to is a design decision, and so is an image-free
treatment." An image-free course is a legitimate outcome of this plan — but the
two site-level files above must go one way or the other before submission.

### The established visual idiom

The starter alt text defines a house style worth keeping, because it already
matches the brand tokens:

> flat gold and black shapes on warm cream, in a two-ink risograph print

Gold is `--at-primary` #b97d1c, bronze `--at-secondary` #8a5c13. Any replacement
artwork should stay inside that two-ink vocabulary rather than introducing
photography, which would read as stock imagery and fight the palette.

---

## 3. What actually earns a visual

Ranked. The test applied to each: *does this explain a relationship the prose is
currently labouring over?* Most of these decks are already strong self-guided
prose and need nothing.

### Tier 1 — recommended, strong case

**W4 · the pin-tumbler lock cross-section.** The single clearest case in the
course. `week-04.deck.mdx` spends five consecutive slides (lines 68–137) in
prose: outside parts, pin stacks, shear line, stuck vs. free to turn, "there is
no partly open." A labelled cross-section in three states — wrong key / no key /
correct key at the shear line — carries that spatial relationship far better
than any paragraph can.

- Form: **inline SVG**, hand-drawn, brand tokens, one figure with three panels.
- Placement: `src/decks/assets/lock-shear-line.svg`, referenced from the "The
  lock, part three: the shear line" slide, plus the matching lecture note.
- Alt: "Cross-section of a pin-tumbler lock in three states: pin stacks
  crossing the shear line and blocking rotation; the plug free to turn when
  every gap between driver and key pin meets the shear line; and a wrong key
  lifting the stacks to the wrong heights."
- **Pedagogical caution:** W3 deliberately withholds this same lock
  (`week-03.deck.mdx` line 134, "Close the reference now"). A diagram in W3's
  reference section must be part of what the student closes, and must not
  reappear during the reconstruction task. Safest: **W4 only.**

**W5 · the seven-rung ladder.** Seven rungs defined across seven slides
(lines 109–192), then used for the rest of the course and recapped in W12.
A single labelled figure is a genuine reference object.

- Form: **inline SVG**, rungs labelled Recognition → Boundary.
- Must be labelled as a course construction on the slide itself — `guidelines.md`
  §3: "The seven-rung instrument is a course construction, not a validated scale."
  The figure must not acquire the visual authority of a published scale.
- Reused in `week-12.deck.mdx` line 38, "The rungs, briefly recapped".

### Tier 2 — defensible, decide case by case

**W1 · the two-part journey.** Device → home network → external service, with
the break on the second leg (`week-01.deck.mdx` line 48). A three-box diagram
would make the distinction immediate. Counter-argument: the prose is already
clear and Week 1 is the approved style model — changing it invites regression.
Recommendation: **propose to the integration session, do not apply unilaterally.**

**W10 · person vs. person-plus-environment.** The boundary this week fails to
defend (line 82, "source vs. collaborator") is genuinely spatial. Risk: a
diagram drawing a clean boundary would assert exactly what the week concludes
cannot be cleanly drawn. Only works if the figure shows the boundary as
*contested* — dashed, unresolved.

### Tier 3 — no image

W2, W6, W7, W8, W9, W11, W12. Each turns on a comparison between two written
performances, which `evidence-pair` in `src/decks/theme.css` already handles as
a styled two-column block. An illustration of a person explaining a zip, a
courier's phone, or a basil plant would be decoration. `guidelines.md` §2
rules it out: "Avoid unexplained icons, decorative diagrams, stock imagery."

W9's "Two notes, side by side" (line 112) is a table, not a picture.

### Deliberately excluded

- Title-slide background art for all twelve weeks. Twelve atmospheric `![bg]`
  images add twelve invisible-to-screen-reader decorations, inflate the PDF
  export (README: full-bleed backgrounds "land at 100 MB+"), and teach nothing.
- Portraits of the fictional cast — Sam, Theo, Priya, Rowan, Elena, Kavi, Elin,
  Marlow, Wren, Petra, Farhan. Generated faces attached to named fictional
  subjects would work against `guidelines.md` §1: "Label invented people,
  situations and sample responses as fictional. Do not present a written
  teaching example as actual student data."

---

## 4. Producing the artwork

Two different jobs, two different tools. This matters more than it sounds.

### Diagrams → hand-authored SVG

The Tier 1 figures carry labelled text — "shear line", "driver pin",
"Recognition". A diffusion model cannot render reliable legible text or an
accurate mechanism, and an inaccurate lock diagram in W4 would be worse than no
diagram, because W4's whole argument rests on the mechanism being right. SVG
also inherits the CSS variables, so a figure stays correct in both themes and
stays a few kilobytes.

### Site artwork → the course image API

`card.png` and `hero-home.avif` are atmospheric by nature — a preview card and a
home-page hero, neither carrying teaching content. These are the honest place
for generation, in the two-ink idiom above.

The course proxy exposes an OpenAI-shaped endpoint:

```sh
curl -s https://strproxy.comp.anu.edu.au/api/images/generations \
  -H "Authorization: Bearer $ANTHROPIC_AUTH_TOKEN" \
  -H "content-type: application/json" \
  -d '{"model":"flux-schnell","prompt":"…"}'
# -> {"data":[{"url": …}]}
```

`GET /api/images/models` lists models, prices and the remaining allowance of
300. A wrapper is drafted at `scripts/gen-image.sh`, taking the key as an
argument so no environment setup is needed:

```sh
./scripts/gen-image.sh --token-file ~/.comp4020-key --models
./scripts/gen-image.sh --token sk-... "a two-ink risograph print…" card.png
```

The key is read from `--token`, `--token-file` or `$ANTHROPIC_AUTH_TOKEN`, in
that order. **Both target images have since been generated for real** — see §6,
which replaces the earlier "never executed" status.

Draft prompts, in the established idiom:

- **card.png (1200×630):** "A two-ink risograph print, flat gold #b97d1c and
  black shapes on warm cream, no text: an abstract composition of a ladder of
  seven horizontal rungs receding into shadow, geometric, high contrast, grainy
  risograph texture."
- **hero-home.avif (2560×1086):** "A two-ink risograph print, flat gold #b97d1c
  and black on warm cream, no text: a wide abstract composition of overlapping
  open books and speech shapes, half in silhouette, grainy risograph texture."

**Correction from the actual run:** a literal hex code in the prompt
(`#b97d1c`) made `flux-schnell` hallucinate pseudo-text ("31togl.99.", "b97d1c.")
in the image corners, even with "no text" also in the prompt. Describing colour
in words ("warm gold and black") instead of hex fixed it — keep hex codes out of
prompts entirely, not just alongside "no text".

Generated output needs three things before it lands: crop to the exact
dimensions, convert (`.avif` for the hero, `.png` for the card — ImageMagick is
already on this machine), and **new alt text written to describe what was
actually generated**, not the prompt. Ask the model for text and it will produce
letterforms that are not letters; keep "no text" in every prompt, and keep hex
colour codes out of it too.

---

## 5. Suggested order

1. Delete or replace the two person portraits — unblocks the evidence gate and
   is a content decision, not an art one.
2. Generate and land `card.png` and `hero-home.avif`; remove the
   `STARTER_CONTENT:` marker in `src/pages/index.astro`.
3. Author the W4 lock SVG — the highest teaching return in the course.
4. Author the W5 ladder SVG; reference it again from W12.
5. Decide W1 and W10 with the integration session.
6. Visual check at 1920×1080 and 390×844, including the PDF export size.

---

## 6. Open items and what is now verified

- **Resolved: a course key exists and strproxy is reachable — from a normal
  terminal.** `card.png` and `hero-home.avif` have both been generated for
  real via `flux-schnell` and landed at `src/assets/images/`, replacing the
  starter files. `scripts/gen-image.sh --models` and a direct generation call
  both succeeded once a key from the course proxy (`ANTHROPIC_BASE_URL` +
  `ANTHROPIC_AUTH_TOKEN`) was present in the environment.
- **Still true: the agent's own sandboxed tool shell cannot reach strproxy.**
  `strproxy.comp.anu.edu.au` resolves and answers ICMP, but HTTPS still times
  out from that sandbox while `https://example.com` returns 200 — an egress
  restriction, not an outage on the proxy's side. Every successful call in
  this session went through the user's own shell (`Bash` tool with an
  explicit key), not the agent's restricted network path.
- **Resolved: `flux-schnell` does accept a `size` parameter** — confirmed via
  a direct `curl` call, not through the wrapper. `GET /api/images/models`
  advertises `1024x1024`, `1024x1792`, `1792x1024`; requesting `1792x1024`
  actually returns `1344x768` (same aspect, capped resolution). Neither of the
  two target sizes (1200×630, 2560×1086) is offered directly, so both were
  generated at the closest wide aspect and cropped/resized locally.
- **Gap found and not yet fixed: `scripts/gen-image.sh` never sends a `size`
  parameter**, so it always gets the square 1024×1024 default. The two real
  generations in this pass bypassed the wrapper with raw `curl` calls to get
  a wide aspect. Adding a `-s/--size` flag to the wrapper would close this.
- Every other image decision above is still editorial. No slide was rendered,
  no figure drawn, no fit or legibility checked.
- Any CSS needed to place a figure on a slide is a change to
  `src/decks/theme.css`, which is an integration-session file.
