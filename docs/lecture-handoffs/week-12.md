# Week 12 handoff — Defending the inference

Authored as one of four parallel forked sessions (weeks 9–12), from the W12
row of `docs/material.md` and `guidelines.md`. Weeks 9–11 were being written
concurrently by sibling forks; only the four files below were created,
edited, renamed or deleted from this fork. By the time I checked,
`week-09.md`, `week-10.md` and `week-11.md` already existed on disk (the
siblings finished before or during my run), so I read `week-11.md`'s
frontmatter to add a real `related:` edge rather than skipping it. I did not
read week-09 or week-10's content beyond confirming their titles/slugs did
not collide with anything I invented.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-12.deck.mdx` | New. 28 slides. |
| `src/content/lectures/week-12.md` | New. 14 numbered sections plus reading and closing sections. |
| `src/content/sessions/12-defending-the-inference.md` | New. ~20-minute solo investigation, with an optional partner variant in step 4. |
| `docs/lecture-handoffs/week-12.md` | This file. |

Frontmatter: lecture `week: 12`, `date: 2027-05-10`, `slides: /decks/week-12/`,
`related: [sessions/12-defending-the-inference, lectures/week-05,
lectures/week-11]`, no `teachers:`. Session `week: 12`, `date: 2027-05-10`,
six `spec:` lines, no `related:`. Deck frontmatter is `title` and
`description` only, matching Week 1's shape. The date is 2027-05-10, one week
after `week-11.md`'s `2027-05-03` (verified on disk) and inside the teaching
period in `src/course-config.ts` (2027-02-22–2027-05-28). This is the last
week: no forward `related:` edge was added, and the lecture's closing section
explicitly states there is no Week 13 rather than inventing a hook.

## The concept, the example, and why

The W12 row's content is: validity as inference; uncertainty; false
positives/negatives; instrument limitations; an AI-assisted subject who
passes every rung; useful vs sufficient evidence; critique of the ladder.
Rather than critiquing the ladder in the abstract, I built one full,
concrete run of it — every rung, in order, on one topic — so the critique in
the second half has a specific performance to point at instead of a
hypothetical one.

**The example is new: Farhan** (fictional, distinct from Sam, Nadia, Theo,
Priya, Rowan and Elin — verified by grep against every existing lecture and
deck file before and after writing; `Farhan` appears only in the two files I
wrote). The topic is why the sky is blue by day and red/orange at sunset —
a domain not used by any earlier week (Wi-Fi/networking, a zip fastener, a
pin-tumbler lock, cyclist navigation, compound interest, and baking are all
already taken by weeks 1, 2, 3/4, 6, 7 and 8).

Farhan is examined live, with notes and devices removed, under conditions
matching the standard the course has been building toward since Week 6 and
(per its title on disk) Week 11. He passes every one of Week 5's seven rungs
cleanly, including a live, unrehearsed-looking response to an on-the-spot
Challenge and an unprompted Boundary admission. The reveal: the examiner
later learns, second-hand, that Farhan rehearsed the topic and a version of
the same objection with an AI collaborator the night before. The
administration was not at fault — the point is that the ladder's own rungs
(Recall, Reconstruction) are defined by the source being absent **at the
moment of performance**, not by where the content came from before that
moment, so a rehearsed, AI-co-produced answer recalled from memory satisfies
those definitions exactly as well as an answer produced entirely alone. This
directly reuses and extends the "hidden assumption" Week 5 named in its own
section 9 and explicitly promised to revisit in Week 12 ("Week 12 attacks the
ladder itself, once you have used it for a term" — quoted from
`src/content/lectures/week-05.md`, which I read in full before writing).

The lesson deliberately does not resolve the case. Two verdicts (count the
pass; mark it inconclusive) are both presented as defensible, and the lesson
argues that adding an eighth rung ("explain something you could not have
rehearsed") only moves the problem rather than solving it, since it still
requires trusting that no collaborator helped with the new topic either. This
follows `guidelines.md`'s instruction that the course's ending should leave "a
disciplined limitation of claims rather than a perfect test," and that the
"failure that must be produced" column names a limitation to investigate, not
a bug to fix.

### Why I grounded the technical example in a verified source, not an invented one

Before writing any of Farhan's answers, I fetched and read NASA Space Place's
"Why is the sky blue?" (<https://spaceplace.nasa.gov/blue-sky/en/>) to check
the scattering explanation rather than relying on general recollection of
Rayleigh scattering. Every physical claim Farhan makes — that shorter
wavelengths scatter more, that scattering happens in all directions, and that
a longer atmospheric path at sunset scatters away more blue before it can
reach the observer — is drawn directly from that page's own explanatory
sentences (quoted via `WebFetch`, not paraphrased from memory). Farhan's
Rung-7 Boundary admission ("I don't know why sunsets are sometimes more
orange... or whether smoke or dust changes it") is deliberately left as an
honest "I don't know," rather than as an invented additional fact, so no
claim beyond what the NASA page supports appears anywhere in the three
content files.

### The activity design

The material.md anchor is "a hard case where the subject passes or fails in
ways that resist a clean conclusion." I built the entire lesson around one
continuous case rather than several short ones, so the reader accumulates
enough investment in Farhan's clean pass before the reveal complicates it —
the same structure Week 4 used with Rowan across three conditions. The solo
activity (`src/content/sessions/12-defending-the-inference.md`) asks the
reader to apply the same useful-vs-sufficient, two-sentence claim structure
to a real piece of their own evidence from an earlier week, which makes the
final week's activity a genuine capstone rather than a repeat of Farhan's
case with different names. A partner variant is offered as an optional step
4, with its limit stated explicitly (a partner can propose an alternative
explanation for your evidence but still cannot observe what actually
happened before you produced it).

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| NASA Space Place, "Why is the sky blue?" | **Technical explanation only**, per `guidelines.md` §3 — grounds the worked example, not a claim about understanding, learning or cognition | Fetched and read directly by me this session via `WebFetch`, with the page's own explanatory sentences quoted back to me; not recalled from general knowledge. |
| Rozenblit & Keil (2002), *Cognitive Science* 26(5), 521–562 | **Empirical finding**, reused a final time from Weeks 2, 3, 5 and 8 | Not re-read this session. I reused only the framing already established by earlier weeks (the diagnostic-question method reveals explanatory gaps fluency conceals) without adding any new statistic, quote or page reference; every specific figure from `docs/lecture-handoffs/verified-sources-w2-w4.md` that appears elsewhere in the course is absent from my three files, so nothing here can be wrong that wasn't already checked by that earlier verification. |
| Booth, Colomb, Williams, Bizup & FitzGerald, *The Craft of Research* (University of Chicago Press), Part 3, "Making an Argument" | **Theoretical/structural framework**, per `guidelines.md` §3 | I attempted to verify a specific edition and page number via `WebFetch` against the publisher's own site (`press.uchicago.edu`) twice; both attempts failed with a TLS certificate error from the fetch tool, not a content issue. I fell back to Wikipedia's summary of the book's table of contents, which independently confirms Part 3 is titled "Making an Argument" and contains sections on warrants and on "Acknowledgments and Responses" to objections. **I did not verify a specific chapter number, page number, or quotation**, and none appears in any of the three content files — the citation is deliberately written at the level of "Part 3's general framework," with an explicit source-note in the deck and a matching sentence in the lecture notes stating this is not a page-level citation. This is more cautious than `guidelines.md` §3's workflow ideally asks for (author/title/year/edition/page all verified); I judged citing the book's well-documented general structure, honestly labelled as unverified at the page level, was better than either inventing a page number or dropping a source that directly matches this week's content (claims, warrants, qualification) better than any other book in the course's recurring pair. Flagging this for the integration session to either accept as-is or ask me to drop. |

No claim, statistic, or quotation was invented for Rozenblit & Keil beyond
what earlier weeks already verified. No page number or direct quotation was
invented for *The Craft of Research* — see the caveat above.

## Verified by direct inspection vs not

**Directly verified by me:**

- The NASA Space Place source, fetched and read this session via `WebFetch`, with its actual sentences quoted, not recalled or guessed.
- `src/content/lectures/week-05.md`, read in full, including the exact wording of its section 9 ("hidden assumption") and its explicit forward reference to Week 12 ("Week 12 attacks the ladder itself, once you have used it for a term"), which this lesson's central move directly answers.
- `src/content/lectures/week-11.md` exists on disk and its frontmatter (`title`, `slides: /decks/week-11/`) was read before adding the `related: lectures/week-11` edge.
- `Farhan` does not appear in any lecture or deck file other than the two I wrote (checked by `grep -l` across all `week-*.md` and `week-*.deck.mdx` files after writing).
- Frontmatter fields against `src/content.config.ts`: `week` is `2` ≤ 12 ≤ `12`, `date` is a valid ISO date inside the course period, `slides` matches `^/decks/[a-z0-9-]+/$`.
- `<p className="source-note">` and `</p>` tags in the deck are balanced (3 and 3), `<details>`/`</details>` tags in the lecture notes and session file are balanced (2/2 and 1/1), and the deck has 27 `---` slide separators (28 slides), counted programmatically after excluding the frontmatter's own two `---` delimiters.
- Internal links in all three files point only to `week-12` / `12-defending-the-inference`, or to earlier weeks by name in prose or as `related:` refs I confirmed exist on disk (`lectures/week-05`, `lectures/week-11`) — no link or `related:` edge to any week other than those two and Week 12 itself.

**Not verified:**

- **No build, dev server, type check, MDX compile, visual check or link check was run**, per instruction. Nothing here establishes the deck fits or stays legible at 1920×1080 or 390×844.
- *The Craft of Research*'s specific edition, page numbers, or exact chapter/section titles beyond what Wikipedia's summary states — see the sources table above. This is the one open item I would flag most strongly for review.
- I did not read `src/content/lectures/week-09.md` or `week-10.md` beyond their frontmatter titles/slugs, since my directive was to avoid working with sibling forks' files; I cannot personally confirm those two weeks don't introduce a character or domain collision with anything I wrote, though a grep for `Farhan` and for my sky/scattering topic across all lecture and deck files found none.
- Whether Week 11's actual administered-exam procedure (which I did not read beyond its frontmatter) matches the "real second person, notes and devices removed, live unscripted follow-up" standard I assumed for Farhan's exam. I built Week 12's administration description to be consistent with what Week 11's title and `guidelines.md` §1's Week 11 note both imply, but did not verify it against Week 11's actual text.

## Intended edges not yet created

- None outstanding for a backward edge: `week-05.md` and `week-11.md` both existed on disk when I wrote `week-12.md`, and both edges were added.
- No forward edge exists or should exist; Week 12 is the course's last week, and the lecture notes' closing section says so explicitly rather than gesturing at a Week 13.

## Risks and outstanding decisions

1. **The Craft of Research citation is verified only at the table-of-contents level**, not page-by-page (see the sources table). This is the single item most worth an integration-session decision: accept the general-framework citation as written, ask me (or a future session) to do a direct page-level read and add a specific citation, or drop the book entirely and rely on Rozenblit & Keil alone.
2. **Character and topic collision risk**, mitigated but not eliminated: I grepped for `Farhan` and confirmed it appears only in my files, and confirmed the sky/sunset topic is not used elsewhere, but I did not read Weeks 9 and 10's full content, so a thematic (not name) overlap — for instance, if Week 10's AI-collaborator example also turns on a live-versus-rehearsed distinction with very similar phrasing — is possible and worth an integration-session check, though the row descriptions I saw on disk (`Repeat the Week 2 knowledge-swap with a live AI collaborator`) suggest a different activity shape (a swap exercise, not an exam).
3. **This lesson assumes Week 11 introduced a real-second-person administered-exam standard** ("notes and devices removed, a real live follow-up") consistent with its title and description on disk, without reading Week 11's actual procedure. If Week 11's actual administration standard differs in some material way, Week 12's opening framing ("following the administration standard this course has been building toward since Week 11") may need a light edit at integration, though the core Farhan case does not depend on the exact details of Week 11's method.
4. **Slide count.** 28 slides, close to Week 8's 27 and within the range the course has used. The case requires walking all seven rungs individually before the reveal, which is why this runs longer than a single-condition week like Week 1.
5. **One `impact` slide beyond the title** (the closing "What this course leaves you with" slide), used deliberately as a symmetrical bookend to Week 1's opening `impact` slide, per the guideline that `impact` should be used sparingly for the main question or an important transition — the course's final transition qualifies.
6. **No shared-file change proposed.** `theme.css` was sufficient as-is; no class was added or modified.

## Evidence level

**Drafted and editorially checked.** I read the deck and lecture notes start
to finish as a student with no lecturer, and confirmed: every physical claim
about light scattering is traceable to the NASA source and no broader than
what it states; the Challenge-rung objection and Farhan's response use only
facts already established earlier in the same lesson, with nothing new
smuggled in to resolve it, matching Week 5's own standard for what counts as
a genuine Challenge response; the two verdicts (A and B) are both actually
argued for rather than one being a straw position; the fictional-label
sentence appears in both the deck's closing slide and the lecture notes'
introduction and closing section, matching Week 1's placement; and the
lecture's "What this leaves unresolved" section explicitly states there is no
Week 13, rather than leaving that ambiguous.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at either marking viewport or any other. Text fit, legibility,
overflow and navigation on 28 slides remain entirely unchecked, per current
instruction that the user performs build and visual checks.
