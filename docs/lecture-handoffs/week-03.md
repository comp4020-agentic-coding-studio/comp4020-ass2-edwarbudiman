# Week 3 handoff — Reconstruction

Authored in a parallel session on 2026-09-20 alongside Weeks 2 and 4. Evidence
level: **drafted and editorially checked.** No build, type check, dev server or
visual review was run, on the user's instruction. Nothing here has been seen in
a browser at either marking viewport.

## Files created

| File | Contents |
| --- | --- |
| `src/decks/week-03.deck.mdx` | Self-guided deck, 36 slides. |
| `src/content/lectures/week-03.md` | Continuous notes, 11 numbered sections. |
| `src/content/sessions/03-reconstruction.md` | Nine-step investigation with a record to keep. |
| `docs/lecture-handoffs/week-03.md` | This file. |

Nothing else was created, edited, renamed or deleted. `src/decks/theme.css`,
`src/content.config.ts`, `guidelines.md`, `docs/material.md`,
`docs/lecture-handoffs/verified-sources-w2-w4.md` and every Week 1, 2 and 4 file
are untouched. `git diff --check` is clean.

Frontmatter is as instructed: lecture `week: 3`, `date: 2027-03-08`,
`slides: /decks/week-03/`, `related: [sessions/03-reconstruction]`, no
`teachers:`; session `week: 3`, `date: 2027-03-08`, four `spec:` lines, no
`related:`; deck `title` and `description` only.

## The example, and why

**The pin tumbler lock**, as the user decided. The reason is carried on the page
rather than assumed: a reconstruction can only be *diagnosed* if the thing
reconstructed has nameable parts, so a loss becomes a specific missing item
instead of an impression that an answer was thin. The object supplies eight
nameable parts, one named boundary (the shear line) and three states, and the
third state — the wrong key — is a condition a reader can omit without writing
anything false, which is what makes the annotation scheme worth having.

The lock is also one of Rozenblit and Keil's own Study 1 test items, which lets
the week's empirical source and its worked example be the same object. Their
diagnostic question for it was to explain step by step how one could pick a
cylinder lock. That appears once, in all three files, labelled explicitly as a
**finding about self-assessment**, with a statement that the lesson does not
cover picking and that nothing in it should be read as instruction in it. No
picking technique appears anywhere.

Fictional person: **Priya**, labelled fictional on first mention in each file.
Week 1's Sam is not reused. Week 2's session (read after it was written in
parallel) uses Nadia and Theo; those are not reused either.

## The lock reference text, verbatim

Week 4 reuses this object and should stay consistent with it. The canonical copy
lives in **`src/content/lectures/week-03.md` section 4**, and identical copies
are in the deck (three slides, "The reference · 1/2/3 of 3") and in the session's
`<details>` block in step 2. Full text:

> An outer **casing** has a cylindrical hole in it. Inside that hole sits a
> rotating cylinder called the **plug**. To unlock the door, the plug has to
> turn. The front face of the plug carries a straight slot, the **keyway**,
> which the key enters. At the back of the plug is a **cam**: a projecting piece
> that, as the plug turns, draws back the **bolt**, the metal bar holding the
> door shut.
>
> Five or six holes are drilled down through the plug. Each holds a **key pin**,
> cut to its own length and rounded underneath so a key can slide across it.
> Directly above each key pin, in a shaft in the casing, sits a **driver pin**,
> with a **spring** above it pressing down. A key pin and the driver pin above
> it make up one **stack**. The boundary where the plug meets the casing is the
> **shear line**: the surface along which the plug has to rotate.
>
> With **no key**, the springs push each stack down, so every driver pin is
> forced part-way out of the casing and into the plug. Pins cross the boundary,
> and the plug cannot turn.
>
> With the **correct key**, its cut edge lifts each key pin by a different, exact
> amount, so every key-pin/driver-pin junction comes level with the shear line.
> Nothing crosses the boundary, the plug turns, and the cam draws the bolt back.
>
> With a **wrong key**, the cuts lift the stacks by the wrong amounts. Lifted too
> little, a driver pin still crosses into the plug; lifted too far, a key pin is
> pushed up into the casing. One wrong stack is enough to hold the plug.

Terms defined in it and relied on later: casing, plug, keyway, cam, bolt, key
pin, driver pin, spring, stack, shear line.

### Terminology discrepancy worth knowing about

`verified-sources-w2-w4.md` records the boundary as the **shear line**. Reading
the Wikipedia article directly (plain-text extract via the MediaWiki API, not a
search snippet) shows the article's Design section calls it the **shear point**;
the phrase "shear line" does appear later in the same article, in the passage on
security pins. The pages therefore teach "shear line" and state, in the deck's
closing sources slide and in the lecture's section 4, that the article calls it
the shear point and that both name the same surface. The verified-sources file
also lists "bible" as the casing's upper portion; that word appears in the
article only as a linked term, so it is not used on any Week 3 page.

## The annotation scheme

Four codes, applied to the reader's own reconstruction after the source is
restored:

- **P** — a part omitted altogether.
- **R** — a relation omitted: parts named but not placed with respect to each other.
- **C** — a causal step omitted: a "because" the mechanism needs.
- **X** — a condition omitted: a case the reference covered, usually the wrong key.

Worked examples are in all three files, with consistent counts for Priya's
partial reconstruction: **P 4, R 2, C 1, X 1**. A second, fuller reconstruction
is also annotated (one **C**, for not linking the key's differing cut depths to
the differing pin lengths), so the deck shows both a good and a partial
reconstruction as the brief required, and shows that a strong answer still
annotates to something specific.

**For the integration session:** Week 2's session, written in parallel, uses a
four-label scheme of its own — *Missing relation*, *Missing cause*, *Boundary
condition*, *Dependency*. Mine overlaps it: R maps to Missing relation, C to
Missing cause, X to Boundary condition; my P has no Week 2 equivalent, and Week
2's Dependency has no Week 3 equivalent. That is defensible as two weeks with
different instruments, but if the course wants one scheme carried forward to
Weeks 4 and 5, the schemes should be reconciled deliberately rather than left to
look like a drafting accident. I have not changed either.

## Sources

| Source | Kind of support | Verified how |
| --- | --- | --- |
| Rozenblit & Keil (2002), *Cognitive Science* 26(5), 521–562 | Empirical finding | **By me, directly.** Fetched the authors' lab PDF, extracted the text and read the title page and §2.1 (Study 1) in full. |
| Chi, M. T. H. (1998 manuscript), "Self-explaining: the dual processes of generating inferences and repairing mental models" | Empirical findings plus a theoretical argument | **By me, directly.** Fetched the PDF, extracted the text, read the title page, the contents, "Terminologies", "Examples of Self-explanations", "The Self-explanation versus the Generation Effect" and the self-repair discussion. |
| Wikipedia, "Pin tumbler lock" | Technical explanation only | **By me, directly.** Read the plain-text article extract via the MediaWiki API. |
| Clark & Chalmers (1998), "The Extended Mind" | Theoretical argument | **Not re-verified by me.** Verified for Week 1 and already cited there; carried into the Week 3 notes only, with a different reading question and no new claim attached. |

Links, all of which returned HTTP 200 when checked from this machine except
where noted:

- <https://cogdevlab.yale.edu/sites/default/files/files/rozenblit%20&%20keil%20%202002.pdf>
- <https://mrbartonmaths.com/resourcesnew/8.%20Research/Self%20explanations/Self%20Explaining%20%28Chi%29.pdf>
- <https://en.wikipedia.org/wiki/Pin_tumbler_lock>
- <https://www.consc.net/papers/extended.html> — **did not respond** to two
  requests from this machine (curl returned no status, 25-second timeout). Week 1
  already links the same URL, so this is a pre-existing condition rather than
  something Week 3 introduced, but somebody should confirm it from a browser.

### What each source is used for, precisely

**Rozenblit & Keil** supports one claim: being asked to *produce* a step-by-step
causal explanation, rather than being handed one, lowered participants' ratings
of their own understanding. Facts used, all read in the paper: sixteen graduate
students from various departments at Yale; a 48-item list (8 test, 40
distracter); a 7-point scale trained on a cross bow and a global positioning
satellite receiver; the eight test items, including the cylinder lock, which sat
in the item set with the helicopter, quartz watch and sewing machine; the five
ratings T1–T5; F(4, 56) = 16.195, p < .001; contrasts T1 v T2, T1 v T3, T1 v T4
significant at p < .002; the rise at T5; the authors' own argument that the
unchanged T3-to-T4 rating rules out the objection that the diagnostic questions
were unfair; and Study 2's replication with Yale undergraduates. The pages state
that their measure is a **self-rating** and therefore self-report, that this is
the course's critique rather than the authors' point, and that running the
protocol once on one reader replicates nothing.

**Chi** supports a narrower claim: people differ widely in noticing that they
have not understood something, which is why the lesson restores the source
instead of relying on the reader's sense of a gap. The numbers used, read in the
manuscript's self-repair discussion, are 15% (poor learners acknowledging a
comprehension failure) against 46% (good learners), reporting Chi et al. (1989).
Both files state that her students had the text in front of them, which is a
different condition from ours.

**Bibliographic caution on Chi.** The manuscript's own title page reads:
"In R. Glaser (Ed.), Advances in Instructional Psychology. Mahwah, NJ: Lawrence
Erlbaum Associates (in press)", dated 15 September 1998, and states that the
graphics are missing from the online version. I therefore cite it as a 1998
online manuscript and say on the page that the published chapter's title and
pagination may differ. I did **not** verify the published chapter, its volume,
its final title or any page number, and no page number is cited anywhere. The
copy I read is hosted on a third-party site (mrbartonmaths.com); I did not find
a copy on the author's own pages. If integration would rather cite the published
chapter, somebody must check the printed volume first.

### Sources deliberately left out

- ***Make It Stick*** (Brown, Roediger & McDaniel). The obvious candidate for
  retrieval practice, and Week 1 already uses its chapter 1. I did not inspect
  any passage on retrieval or on generation, and `guidelines.md` §3 forbids
  citing a chapter title or page I have not checked, so it is absent from Week 3
  entirely. **Outstanding gap:** if the course wants it here, somebody has to
  read the relevant chapter and supply the reference.
- **Bjork on desirable difficulties.** Plausible and thematically close. Not
  fetched, not read, not cited. **Outstanding gap.**
- **Bartlett (1932), *Remembering*.** The classic source for remembering as
  reconstruction, and the most natural support for §2's recall/reconstruction
  distinction. Not in the verified-sources list, not fetched, not cited. That
  distinction is therefore presented as **a course construction**, defined
  through the example, with no citation attached. **Outstanding gap, and the one
  I would fill first.**

## Course positions the week is built to respect

- **CON-5 and §6.2.** Reconstruction is presented throughout as the best
  instrument available, not a virtue. One deck slide and one lecture section are
  devoted to saying so: consumption is necessary scaffolding, Priya could not
  have reconstructed anything she had never read, and a lesson recommending that
  readers consume less has changed the subject to self-improvement. No page tells
  the reader to read differently.
- **No repetition of Week 1's conclusion.** Week 1 is recapped in one paragraph
  (examiner, observation versus inference, conditions in the record, Clark and
  Chalmers on references) and then explicitly set aside: the week does not
  re-argue whether to remove a source, only what the removal makes visible.
- **The limitation is stated, not hidden.** Reconstruction can be memorised,
  rehearsed or assisted; and in a self-guided setting nobody witnessed the source
  being closed. A complete reconstruction is taken seriously: two slides and a
  lecture section say what it establishes (a structure produced with the source
  out of view, at that moment, in an inspectable artefact) and the four things it
  does not (built rather than memorised; the source actually closed; another
  mechanism; a question the reference did not answer).
- **Sequencing** follows `docs/material.md`, not `PROJECT-BRIEF.md` §6.

## Intended edges not yet created

The build fails on an unresolved ref, so these were **not** added. Integration
should add them once Weeks 2 and 4 exist:

| From | To | Why |
| --- | --- | --- |
| `lectures/week-03` | `lectures/week-02` | Week 3 opens by taking up Week 2's finding that fluent explanation conceals gaps. Currently prose only. |
| `lectures/week-03` | `lectures/week-04` | Week 3 hands Week 4 its question and its object. Currently prose only. |
| `sessions/03-reconstruction` | `sessions/02-first-review` | Both run an adaptation of the Rozenblit & Keil protocol on a different device. |
| `sessions/03-reconstruction` | Week 4's session | Week 4 reuses this lock and this record; the Week 3 record is explicitly written to be compared against. |

Week 2 and Week 4 are referred to by name in prose in all three files, which
`guidelines.md` §4 permits. No Week 2 or Week 4 file was read for facts beyond
Week 2's already-committed session page; nothing in Week 3 depends on Week 2's
or Week 4's details.

Week 3's session does **not** link `assessments/assignment-1`, although Week 2's
session does. If Assignment 1 is meant to be rehearsed across these weeks, that
edge is an integration decision; I did not read the assessment page and did not
want to claim a relationship to it.

## Other outstanding decisions

1. **The reference occupies three consecutive deck slides,** not one. The brief
   asked for the reference "on its own slide". At the guidelines' 45–85 words per
   slide, a reference complete enough to reconstruct — parts, relations, causal
   steps and the wrong-key condition — does not fit on one, and shrinking it
   would remove the very things the annotation scheme looks for. The three slides
   are labelled "1 of 3", "2 of 3" and "3 of 3" and are followed by a slide
   telling the reader to treat them as gone. If integration prefers one slide,
   that costs either the type size or the wrong-key condition. Flagging it rather
   than deciding it silently.
2. **Two slides run long by the word heuristic:** the third reference slide and
   the fuller-reconstruction model answer, both around 110–140 words. Both are
   specimen text being examined rather than explanation, and `guidelines.md`
   calls the range an editing heuristic. They are the two slides most likely to
   overflow at 390×844 and should be looked at first in the visual review.
3. **Deck length is 36 slides**, against Week 1's 27. The guide says to prefer an
   extra slide over compressing reasoning, and Week 3 carries a reference text
   and two annotated worked responses that Week 1 did not.
4. **`evidence-pair` and `reading-entry` are used here for the first time.**
   Week 1 uses neither, so `theme.css` has never rendered them in this repo. The
   deck uses `evidence-pair` once (recall against reconstruction) and
   `reading-entry` twice, in both cases as a `className` div with markdown
   children separated by blank lines. If MDX or the astromotion pipeline objects,
   those three blocks are the places to look; no CSS change is proposed.
5. **`p &lt; .001` is written as an HTML entity** on one deck slide, to keep a
   bare `<` out of MDX. The lecture uses a plain `p < .001`, which is safe in
   Markdown.
6. **Time budgets:** deck 40 minutes, session 30 minutes plus an optional 10 for
   the partner variant. Not measured against a real reader.
7. **The session's partner variant** exists because `guidelines.md` §1 requires a
   solo route for partner activities and a statement of what solo loses. Here the
   partner improves exactly one thing — the closure of the source becomes an
   observation somebody else can report — and the page says that is the only
   thing it improves.

## Checks actually performed

- Read the whole deck start to finish as a reader with no lecturer and no prior
  knowledge of locks, and fixed what that turned up: the part count was wrong
  ("about seven" against eight parts plus a boundary); Priya's **P** count
  disagreed between the annotation slide, the weighing slide and the record slide
  (now **P 4** everywhere, with the four parts listed so the count is
  derivable); the two main activities were missing an explicit purpose and a
  statement of permitted resources; the lecture's third activity had no time; and
  the annotation step was quoted as 5 minutes in the deck and 6 in the session.
- Cross-checked claims, times, counts, terminology and the reference text for
  agreement across the deck, the lecture and the session.
- Verified every source claim against text I extracted and read myself, as
  tabulated above.
- Checked the four external URLs with `curl`; results above.
- `git diff --check` — clean.

**Not performed, on the user's instruction:** `pnpm install`, `pnpm dev`,
`pnpm check`, `pnpm check:evidence`, any build, any type check, any browser or
viewport review. The MDX has not been compiled. No commit, no push.
