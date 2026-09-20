# Week 9 handoff — The prior state

Authored as one of four parallel forked sessions (weeks 9–12), from the W9
row of `docs/material.md` and `guidelines.md`. Weeks 10–12 were being written
concurrently by sibling forks; nothing outside the four files below was
created, edited, renamed or deleted, and I did not read or wait on their
output.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-09.deck.mdx` | New. 26 slides. |
| `src/content/lectures/week-09.md` | New. Continuous notes, 11 numbered sections plus "apply the lesson," reading and closing sections. |
| `src/content/sessions/09-prior-commitment.md` | New. ~20-minute solo investigation, with a partner variant noted in step 6. |
| `docs/lecture-handoffs/week-09.md` | This file. |

Frontmatter: lecture `week: 9`, `date: 2027-04-19`, `slides: /decks/week-09/`,
`related: [sessions/09-prior-commitment, lectures/week-08]`. Session
`week: 9`, `date: 2027-04-19`, four `spec:` lines, no `related:`. Deck
frontmatter is `title` and `description` only, matching Week 1's shape.

`2027-04-19` continues the established weekly cadence (W1 2027-02-22 → W8
2027-04-12, one week apart each time, confirmed directly against every
`week-0N.md` file currently on disk) and sits inside the teaching period in
`src/course-config.ts` (2027-02-22–2027-05-28).

## The concept, the example, and why

The W9 row's content is: pre-commitment; predictions; before/after states;
revision; calibration only after a prior claim exists; wrong-first-answers
as evidence. I built this around one concept — the **prior state**, a claim
recorded before an answer is known — introduced by contrast with a claim
recalled *after* the answer is known, which is the specific failure mode the
lecture spends most of its weight on.

**The example is new**: Marlow (fictional, they/them; a name not used by any
week I could check — see collision-risk note below) diagnoses a tomato
plant's yellowing, curling leaves. Marlow writes a prediction and confidence
level before opening a gardening reference, then revises after checking the
soil and stem. The two notes, read together, are the lesson's continuing
example; the investigation repeats the same pattern with a second plant (a
fern) so the reader produces their own pair of notes rather than just
reading about Marlow's.

The worked point, matching the W9 "failure that must be produced": a
correct final answer erases its own path, and while a recorded prior state
helps recover part of that path, it still cannot tell us how much of the
later, revised answer came from the person's own reasoning versus
assistance received during the task. This is stated explicitly in the
lecture's closing sections and hands forward to W10 ("whose cognition are we
looking at?") using an AI-or-person collaborator present *during* the task,
rather than only a reference checked afterward.

### Why I grounded the "don't trust your own hindsight" claim in a real study, not an assertion

The lecture's central caution — that asking someone afterward "did you
already suspect it?" is weak evidence — needed real empirical support, since
it is doing real argumentative work (it is the reason a *written* prior
state matters more than a *recalled* one). I searched for and fetched
Fischhoff, B. (1975), "Hindsight ≠ Foresight: The Effect of Outcome
Knowledge on Judgment Under Uncertainty," *Journal of Experimental
Psychology: Human Perception and Performance*, 1(3), 288–299, and read the
first three pages of the original scanned PDF directly (not a summary or an
abstract) before writing any claim from it. I used the paper's own reported
numbers only: 24 comparisons, all showing the hypothesized direction (sign
test p < .001), a mean increase of 10.8 percentage points, over 70% of
After-group subjects exceeding the average Before-group estimate. The
abstract's claim that subjects were "largely unaware" outcome knowledge had
changed their perceptions, and that they overestimated what they would have
known without it, is quoted from the paper's own abstract text as read on
page 288 — I did not extend this to a stronger claim than the abstract
states, since I did not read Experiments 2 and 3 in full (see "not
verified" below).

### The activity design

`docs/material.md`'s anchor is "student commits to prediction/explanation
before sources, then researches, revises and explains why." I made the
solo activity self-completable by giving the reader a second, unseen case
(the fern) rather than asking them to just imagine Marlow's case: the reader
writes a real prior claim in session step 1, then reads a reference they
could not have seen beforehand in step 2. The genuine constraint stated
explicitly in the deck and session ("do not edit your prior note") is the
same discipline the lecture argues for — I flagged in the session's step 4
that this is the same defence Fischhoff's subjects lacked. A partner variant
is offered in session step 6 (a partner can watch step 1 happen before step
2 is revealed, which is stronger evidence of a genuine, unedited prior
state), with its own limit stated (it can't rule out prior exposure to a
similar case).

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Fischhoff, B. (1975), *Journal of Experimental Psychology: Human Perception and Performance* 1(3), 288–299 | **Empirical finding** | Fetched the PDF myself this session (MIT-hosted copy, URL in both the deck and lecture notes) and read pages 288–290 directly as scanned images, not a summary. Every number used (24 comparisons, p < .001, 10.8 percentage points, >70%) is copied from what I read on page 290, not estimated or recalled from training knowledge. |

No other source was cited. `guidelines.md` §3 says neither recurring book
must appear every week; I considered *Make It Stick*'s generation-effect
material but judged it would be reused for a claim ("attempting an answer
before being told helps learning") that is about study technique, not about
what a prior state demonstrates as evidence — the course's stated scope
excludes drifting into generic study advice, so I left it out rather than
attach a citation to a claim it does not directly support.

## Verified by direct inspection vs not

**Directly verified by me:**

- The Fischhoff (1975) PDF, fetched and read this session (pages 288–290), not recalled or guessed. The publication details (journal, volume, issue, pages, year) are read directly off the scanned first page.
- The URL's HTTP reachability (the fetch succeeded and returned readable page images).
- `src/content/lectures/week-08.md` exists on disk and its closing section explicitly names "a prior state" as what week 9 covers, confirmed by reading its last ~15 lines before adding the `related: lectures/week-08` edge.
- Every other week's lecture file (01–08) for character names in use (`Sam, Nadia, Theo, Priya, Rowan, Elin`) and the example domain each week uses (Wi-Fi, a zip fastener, a pin-tumbler lock twice, the ladder itself, cyclist navigation, compound interest, baking) — `Marlow` and the plant-diagnosis domain do not collide with any of them.
- Frontmatter fields against `src/content.config.ts`: `week` is `1 ≤ 9 ≤ 12`, `date` is a valid ISO date inside the course period, `slides` matches `^/decks/[a-z0-9-]+/$`.
- `<div className="evidence-pair">` open/close tags and `---` slide separators counted directly in the deck file (26 slides, 3 matched `<div>`/`</div>` pairs, no `<details>` blocks used in the deck — worked responses sit on the following slide instead, matching Week 1's on-slide pattern rather than a collapsible one).
- Internal links point only to `week-09` / `09-prior-commitment`, or externally to the Fischhoff PDF — no link or `related:` edge to any week other than 8 (backward) and 9 (self).

**Not verified:**

- **No build, dev server, type check, MDX compile, visual check or link check was run**, per instruction. Nothing here establishes the deck fits or stays legible at 1920×1080 or 390×844.
- I read pages 288–290 of Fischhoff (1975) (the abstract, introduction, and Experiment 1's method and results) but did not read the full paper, including Experiments 2 and 3 in detail. The lecture's claim about subjects being "largely unaware" and "overestimating what they would have known" is drawn from the abstract's own summary of those experiments, on page 288 — I did not independently verify the specific figures for Experiments 2–3 the way I did for Experiment 1, and made sure not to quote any number from them.
- Whether weeks 10, 11 or 12 chose an example, character name, or slug that collides with `Marlow`, the plant-diagnosis domain, or `09-prior-commitment` — those files did not exist on disk when I checked, so I could not verify against them. Worth an integration-session check once all four land.

## Intended edges not yet created

- `week-09` → `week-10`'s lecture or session: cannot be added, week 10 does not exist yet. The lecture's closing section names the collaborator idea and "next week" in prose only.
- The reverse edge, `week-08` → `week-09`, if the Week 8 author (or an integration pass) wants to add a working link where Week 8 currently only names "a prior state" in prose.

## Risks and outstanding decisions

1. **Character and example collision risk.** Written without sight of weeks 10–12's choices. Checked clean against weeks 1–8. If a sibling week also lands on a gardening example or reuses "Marlow," that should be caught and fixed at integration.
2. **Slide count.** 26 slides, between Week 1's 24 and Week 8's reported 27 — in range, but a judgement call, flagged for review.
3. **The fern case in the session (step 1–4) is deliberately a *new* plant**, not a repeat of Marlow's tomato, so the reader produces a genuinely fresh prior claim rather than rehearsing an answer they've already seen worked through in the deck. This is a designed feature, not a hedge.
4. **One `evidence-pair` slide** (Marlow's two notes) and one `investigation` slide (the basil pause-and-write) were used, plus one `impact` title slide — similar density to Week 2's usage, judged appropriate since the two-notes comparison is the lecture's central visual argument.
5. **No shared-file change proposed.** `theme.css` was sufficient as-is; no class was added or modified.
6. **Course-level context noted but not acted on:** the user has confirmed the course should read as `SLOP4152`/level 4 rather than the currently committed `SLOP1152`/level 1 (per `PROJECT-BRIEF.md` lines ~180–208). I wrote toward that intended level (assuming reader sophistication, not remedial framing) but did not touch `course-config.ts`, since it is an integration-session file and the change itself has not yet been applied anywhere in the repo.

## Evidence level

**Drafted and editorially checked.** I read the deck and lecture notes start
to finish as a student with no lecturer and no gardening knowledge, and
confirmed: the Fischhoff figures in the lecture notes and deck match what I
read on page 290 of the source PDF exactly, with no numbers added or
altered; the activity's step order (write the prior claim before reading the
reference) is enforced by where the reference text physically sits in both
the deck (next slide) and the session file (step 2, after step 1's
instruction to write first); and the fictional-label sentence appears in
both the deck's sources slide and the session's purpose section.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at either marking viewport or any other. Text fit, legibility,
overflow and navigation on 26 slides remain entirely unchecked, per current
instruction that the user performs build and visual checks.
</content>
