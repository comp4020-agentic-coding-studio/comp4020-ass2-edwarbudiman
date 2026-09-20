# Week 5 handoff — Build the first instrument

Written as one of four parallel forks producing Weeks 5–8 in this
integration-owned session, from the W5 row of `docs/material.md` and
`guidelines.md`. My allowed output files were the four listed below; nothing
else was read for editing and nothing else was touched.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-05.deck.mdx` | New. 40 slides. |
| `src/content/lectures/week-05.md` | New. Continuous notes, 11 sections. |
| `src/content/sessions/05-the-ladder.md` | New. 25–30 minute investigation. |
| `docs/lecture-handoffs/week-05.md` | This file. |

Frontmatter as specified: lecture `week: 5`, `date: 2027-03-22`,
`slides: /decks/week-05/`, `related: [sessions/05-the-ladder, lectures/week-04]`.
Session `week: 5`, `date: 2027-03-22`, four `spec:` lines. Deck frontmatter is
`title` and `description` only. The date continues the weekly cadence from
Weeks 1–4 (2027-02-22, -03-01, -03-08, -03-15) and sits inside
`src/course-config.ts`'s teaching period (2027-02-22 to 2027-05-28).

## The ladder itself: sourced from PROJECT-BRIEF.md, not invented here

The seven rungs — Recognition, Recall, Reconstruction, Explanation,
Justification, Challenge, Boundary — are **not my invention**. They come from
`PROJECT-BRIEF.md`'s `LAD-1`, marked `DECIDED`, which I read before writing and
used verbatim, in that order, with no rung added, removed or renamed. I wrote
the operational definition ("I've seen this," "I can retrieve this without the
source in front of me," etc.) and every example placement myself, but the
scale's existence and shape were not my decision to make.

I deliberately gave the ladder **zero new external citations**. `docs/material.md`
already frames the ladder as an "instrument, not a theory of understanding,"
and `PROJECT-BRIEF.md`'s `LAD-2` says the site should explain why it was built
"rather than borrowing Bloom's" — so grounding it in a published taxonomy would
work against the brief's own intent. Where I do cite (Rozenblit & Keil, Clark &
Chalmers), both are reused from the already-verified record in
`docs/lecture-handoffs/verified-sources-w2-w4.md`, cited for work they do for
*this* week's claim, not repeated out of habit. I did not fetch or verify any
source myself this week; I did not need one.

## A wording conflict with the shipped Week 4, and how I handled it

`src/content/lectures/week-04.md` (already on disk, not mine to edit) previews
the ladder as "a ladder of performances running from recognising something up
to connecting it to other things." That phrase does not match `LAD-1`'s actual
top rung, **Boundary** ("I know where my explanation stops working") — there is
no "connection" rung in the decided instrument.

I did not edit Week 4. Instead, Week 5's lecture note and deck both open by
naming this directly: "Week 4 previewed this loosely... That phrase was a
placeholder; naming the actual top rung is this week's job, not last week's."
This is accurate rather than evasive — Week 4's own text says the ladder
"deliberately stops at naming the need" and warns the reader not to draft one
yet — but it is still a phrase that doesn't match the delivered instrument, and
**integration should decide whether to tighten Week 4's wording** to something
that doesn't imply a rung that doesn't exist (e.g. "up to the limits of its own
explanation"). I did not judge this urgent enough to block on, since Week 5's
framing already neutralises it for a reader going through the weeks in order.

## The classification material: reused, not reinvented

Section 5/6 of the lecture (and the deck's parallel run) classifies five
performances quoted **exactly** from the four already-shipped weeks: Sam's one
sentence (Week 1), Theo's zipper explanation (Week 2), Priya's lock
reconstruction (Week 3), and Rowan's conditions (b) and (c) (Week 4). I read
all four source files in full before writing and copied the quotations
character-for-character from `src/content/lectures/week-0{1,2,3,4}.md` — I did
not paraphrase or invent new dialogue for any of them. No new fictional person
narrative was required for this, so I introduced none; the one place a fresh
example might have helped (an illustrative Challenge exchange) I handled
instead by having the *reader's own* Week 2/3 work stand in as the material
under attack, which avoids inventing a sixth fictional character for a single
use.

The five placements are written to disagree with each other on purpose,
grounded in specifics already established by the source weeks, not invented
tension:

- **Sam** — Recognition vs. Recall, turning on whether the source's visibility
  changes which rung applies. This is the thread that becomes section 9's
  named assumption.
- **Theo** — attempted Explanation, but Week 2's own text already establishes
  the missing causal step, so a strict reading only credits Recall.
- **Priya** — attempted Reconstruction; Week 3's own P/R/C/X annotation (four
  parts missing, one causal step missing) is reused to argue a strict reading
  pulls her back toward Recall.
- **Rowan (b)** — reaches Explanation by task, but Week 4 already established
  the single-pin/two-pin error, so reaching a rung and being correct are kept
  as separate findings.
- **Rowan (c)** — the deliberately hard case: I read its "because the barrel is
  one piece" as Justification and "I cannot see what would make it false" as
  Boundary, with nothing in the transcript reaching Challenge. This is the
  clearest textual support I found in the whole corpus for `LAD-4`'s "rungs are
  neither strictly ordered nor all necessary."

## The missing rung, and why I did not invent a sixth character to fill it

No performance across Weeks 1–4 reaches Challenge — nobody's explanation is
attacked by a second party and defended. I treat this as a genuine finding
about the course's own material so far, not a gap I needed to paper over: the
lecture argues explicitly that Challenge cannot be produced by a person working
alone, which motivates the investigation's Challenge-production activity
(section 2) rather than requiring me to fabricate a sixth transcript. This is
also the load-bearing setup for `docs/material.md`'s W5 "hands to next week"
column ("attack those assumptions one at a time") without pre-empting which
assumption Week 6 attacks.

## The named assumption, and the handoff to Week 6

Section 9 of the lecture (and its deck parallel) names the assumption baked
into rungs 2 and 3 by their own wording — both are defined as performances
produced *without* a resource, so a performance with a resource present cannot,
by the stated definition, reach those rungs regardless of accuracy. I named
this as **"a performance produced without support is intrinsically stronger
evidence than the same performance produced with support,"** and end the week
by handing exactly this to Week 6 ("Does needing support show that you do not
understand, or only that you were allowed to use what was available?"), which
is the W6 row's own question in `docs/material.md`, reached honestly from this
week's material rather than asserted from the table.

I did **not** attempt to resolve the assumption, attack it, or pre-empt Week
6's content — Week 5 only names it, as the brief for this week requires.

## The standalone ladder page (LAD-2/LAD-5): not built

`PROJECT-BRIEF.md`'s `LAD-2` proposes the ladder "gets its own page," and
`LAD-5` proposes that page carry operational definitions of "understanding" and
"reconstruction." Per the user's decision before this fork was spawned, I did
**not** build a standalone page or touch `src/content.config.ts` — no `pages`
collection exists yet, and adding one is a shared-config change outside my
allowed files. The full ladder definition instead lives inside
`src/content/lectures/week-05.md` §3, which satisfies `docs/material.md`'s W5
row ("introduce/build the ladder... operational definitions"). **Flagged for
integration:** if a standalone ladder page is built later, its content can be
lifted near-verbatim from Week 5 §3, and Week 5's `related:` list should then
gain an edge to it.

## Intended edges not yet created

- `src/content/lectures/week-05.md` → `lectures/week-06` (Week 5 names Week 6's
  question by content, in prose only — no edge added, since Week 6 did not
  exist at the moment I read the tree, and I did not re-check after another
  fork may have created it, per my file-scope restriction).
- The reverse edge from a future `lectures/week-06.md` back to
  `sessions/05-the-ladder` (Week 5's investigation record is the raw material
  Week 6 would want) is the more useful direction; recorded here for whichever
  session adds it.
- No edge to a future standalone ladder page (see above).

## Verified by direct inspection vs not

**Directly verified by me:**

- Read `guidelines.md` in full, `src/decks/week-01.deck.mdx`,
  `src/content/lectures/week-01.md`, `src/content/sessions/01-getting-started.md`,
  `src/decks/theme.css`, and the full lecture notes for Weeks 2, 3 and 4 before
  writing, specifically to quote real dialogue rather than paraphrase it.
- Read `PROJECT-BRIEF.md` §5 (the instrument) directly for `LAD-1` through
  `LAD-5` rather than relying on a memory of the earlier planning discussion.
- Every quotation in §5/§6 of the lecture and the deck's parallel slides was
  checked character-for-character against its source file.
- Frontmatter checked against `src/content.config.ts`'s `weekSchema`, `slides`
  regex (`^/decks/[a-z0-9-]+/$`), and `src/course-config.ts`'s date range.
- Internal links in all three files point only to `week-05`, `05-the-ladder`,
  or `week-04` (an existing file). No link to a week-06 file, page, or slug
  that does not exist.
- Slide density: 40 slides, aiming for Week 1's ~45–85-word band per slide;
  several worked-response slides run slightly longer because they quote and
  then analyse someone else's sentence, which cannot be cut further without
  losing the quotation.

**Not verified:**

- **No build, dev server, type check or visual check was run**, per current
  user preference (`guidelines.md` §6). I attempted a syntax-only MDX parse
  with `@mdx-js/mdx` the way the Week 4 handoff records doing, but the package
  is not present in this checkout's `node_modules` (`Cannot find module
  '@mdx-js/mdx'`), so **no compile check was possible this time**; the deck's
  MDX syntax has not been machine-checked at all. Flagging this explicitly
  since Week 4's handoff reported a real pass and mine could not attempt one.
- Nothing here establishes that any slide fits or stays legible at 1920×1080
  or 390×844.
- I did not re-verify `https://cogdevlab.yale.edu/...` or
  `https://www.consc.net/papers/extended.html`; both are carried over from the
  already-verified record and I made no new claim from either source that
  wasn't already checked for Weeks 1–4.
- I have not checked whether the other three forks (Weeks 6–8) chose fictional
  names, session slugs or a treatment of the same "Week 4 preview wording"
  issue that conflicts with what I did here; that reconciliation is
  integration's job.

## Risks and outstanding decisions

1. **Week 4's "connecting it to other things" wording**, discussed above —
   integration should decide whether to tighten it.
2. **Priya's and Theo's rung placements are argued both ways on purpose**,
   which matches the brief's "students... disagree about difficult cases," but
   means the lecture never states a single "correct" placement for three of the
   five performances. If a marker or reviewer wants one canonical answer per
   case, that is a content change, not a bug — flagging the choice rather than
   defaulting silently.
3. **The Challenge activity (§8/§9 of the lecture, §2 of the session) asks
   students to reuse their own Week 2/3 answers.** A student who skipped those
   investigations has a fallback (use Priya's text), but the activity is
   markedly weaker for them — there is no independent record to defend. Noted
   rather than solved.
4. **No `evidence-pair` used this week** — the five-performance classification
   didn't suit a genuine two-item comparison, and I did not force one in to
   match a pattern from other weeks.
5. **No shared-file change proposed or made.** `theme.css`, `content.config.ts`
   and `course-config.ts` are untouched.

## Evidence level

**Drafted and editorially checked**, not visually reviewed. I read the deck and
lecture start to finish as a student with no lecturer, checked every quoted
sentence against its source file, and confirmed the ladder's rungs, order and
wording against `PROJECT-BRIEF.md` rather than against my own memory of the
earlier planning conversation. The MDX has **not** been parsed by a tool this
time (see "Not verified" above) — a plain read for balanced code fences,
matching `---` slide separators (40 slide breaks, checked by counting), and
valid JSX comments was done by eye, which is a real limit compared to Week 4's
machine-checked pass.
