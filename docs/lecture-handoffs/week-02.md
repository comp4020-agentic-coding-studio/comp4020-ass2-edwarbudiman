# Week 2 handoff — The feeling of understanding

Authored in a parallel session that was assigned Week 2 only. Weeks 3 and 4 were
being written at the same time by other sessions; nothing outside the four files
below was created, edited, renamed or deleted.

## Files changed

| File | Status |
| --- | --- |
| `src/decks/week-02.deck.mdx` | New. 35 slides. |
| `src/content/lectures/week-02.md` | Starter content replaced in place; `STARTER_CONTENT` comment deleted. |
| `src/content/sessions/02-first-review.md` | Starter content replaced in place; slug kept; `STARTER_CONTENT` comment deleted. |
| `docs/lecture-handoffs/week-02.md` | This file. |

Frontmatter: lecture carries `title`, `description`, `week: 2`,
`date: 2027-03-01`, `slides: /decks/week-02/`, `teachers: [idris-fenn]` and
`related: [sessions/02-first-review, assessments/assignment-1]`. Session carries
`title`, `description`, `week: 2`, `date: 2027-03-01`, `teachers: [idris-fenn]`,
four fresh `spec:` lines and `related: [assessments/assignment-1]`. The deck has
`title` and `description` only.

No shared file was touched: `theme.css`, `content.config.ts`, `course-config.ts`,
`site-config.ts`, `astro.config.ts`, `guidelines.md`, `docs/material.md`, the
verified-sources file, all Week 1/3/4 files and the package and lock files are
untouched. No proposal to change any of them arises from this week.

## The example, and why

**The zip fastener**, as a continuing example across all three pages.

- It is one of Rozenblit and Keil's own eight Study 1 test items, so the course
  is adapting their protocol on an object they actually used rather than
  transplanting it onto something untested.
- It needs no prior knowledge, no equipment and no device failure. The lesson
  explicitly tells the reader not to hold a zip or look one up, because the
  activity depends on *not* having the mechanism available.
- Its mechanism has exactly the shape the week needs: a fluent, true sentence
  ("the slider pulls the teeth together and they interlock") is available to
  almost everyone, and it omits the relation that does the work.

The diagnostic question is ours: *the slider is a single rigid piece with no
moving parts; explain how one rigid object both closes and opens the zip.* It
cannot be answered without the Y-shaped channel, which is the relation the
fluent sentence omits. It is modelled on the paper's own cylinder-lock
diagnostic ("explain step by step how one could pick it").

The fictional people are **Nadia** (supplies the topic she knows) and **Theo**
(researches and explains it back). Both are labelled fictional on every page.
Week 1's "Sam" is not reused.

## Sources

| Source | Link | Kind of support | Used for |
| --- | --- | --- | --- |
| Rozenblit, L., & Keil, F. (2002). "The misunderstood limits of folk science: an illusion of explanatory depth." *Cognitive Science* 26(5), 521–562. | <https://cogdevlab.yale.edu/sites/default/files/files/rozenblit%20&%20keil%20%202002.pdf> | **Empirical finding** | The protocol, the 1–7 scale and its training examples, the eight test items, the Study 1 sample, and the statistics. |
| Wikipedia, "Zipper" | <https://en.wikipedia.org/wiki/Zipper> | **Technical explanation** | The expert description of the mechanism: tapes, teeth/elements, slider, Y-shaped channel, pull tab, top and bottom stop, projection and recess, elastic deformation. |
| Brown, Roediger & McDaniel (2014), *Make It Stick*, chapter 1 | <https://www.makeitstick.com/> | **Synthesis / book** | A single reading pointer on familiarity, carried from Week 1 with a different reading question. No page number or chapter title beyond the chapter 1 title Week 1 already verified is asserted. |

### What was verified by direct inspection, and what was not

- **Rozenblit & Keil: not re-fetched by this session.** Every fact used comes
  from `docs/lecture-handoffs/verified-sources-w2-w4.md`, which the integration
  session compiled by reading the full PDF. The task brief instructed this
  session to use that file rather than re-derive it. Facts taken: the citation
  string, the 7-point scale and its anchors, the cross bow and GPS-receiver
  training items, the zipper as a test item, the cylinder-lock diagnostic
  example, 16 Yale graduate students each rating four of eight items,
  F(4, 56) = 16.195, p < .001, the T1-vs-T2/T3/T4 contrasts at p < .002, the
  T5 rise, and "twelve studies in the one paper." **No page number, quotation
  or chapter title from the paper appears anywhere in the three pages.**
- **Wikipedia "Zipper": fetched and read by this session** with WebFetch on
  2026-09-20. It is not in the verified-sources file, which verified a pin
  tumbler lock instead; the zip needed its own technical grounding and this
  supplied it. Terminology used on the pages is the article's own ("tape",
  "teeth"/"elements", "slider", "Y-shaped channel", "pull tab", "top stop",
  "bottom stop", "projection", "recess", elastic/reversible deformation of the
  locking members). It is labelled on all three pages as technical background
  for the worked example and explicitly *not* evidence for any claim about
  understanding, per `guidelines.md` §3. If the integration session prefers a
  higher-quality technical reference, swapping it changes only three passages.
- **One inference beyond the source, flagged as such in the text.** The
  boundary-condition slide ("bend or lose a tooth and nothing is interlocked at
  that point") is a consequence of the projection-in-recess geometry the article
  describes, not a sentence the article states. All three pages introduce it
  with wording that says it follows from the geometry rather than from an extra
  fact. Likewise "the slider reaches the teeth one pair at a time" is the
  article's own point; "undone in series rather than resisted in parallel" is
  the course's phrasing of it.
- **Make It Stick: not inspected by this session.** Only the claim Week 1
  already verified is reused, and the reading pointer names no page.
- **Nothing from the unverified candidate pool** (Ryle, Bjork, Chi, Sweller,
  Wiggins & McTighe, Biggs, Toulmin) is cited. Two verified sources plus one
  carried-over reading pointer were judged sufficient.

### Gaps recorded rather than filled

- Chi's self-explanation effect would be the natural counterweight to this
  week's argument — evidence that explaining *produces* understanding, not only
  exposes its absence. It is unverified for this repo, so it was left out. If
  the integration session verifies it, the natural home is the "Explaining as a
  probe, not a proof" slide.

## Keeping the source, our adaptation and our critique apart

`guidelines.md` §3 requires these three to stay distinct. They are separated
explicitly on the pages, not merely by implication:

1. **Theirs** — the protocol, the scale, the illusion of explanatory depth as a
   finding, and the Study 1 statistics, all attributed on the slide where they
   appear.
2. **Our adaptation** — one object, one reader, three of their five ratings,
   our own diagnostic question, our own expert description. Slide "And you have
   not replicated anything" and lecture §6 both state that running this once on
   oneself, with no control and no comparison group, **is not a replication**,
   and that the reader knew the design in advance, which the participants did
   not.
3. **Our critique** — a slide and a lecture subsection both open with "this
   point is ours, not Rozenblit and Keil's": the thing that fell is a
   **self-rating**, so it is evidence about confidence, not about performance.
   The evidence-pair slide sets the rating trail (self-report) against the
   written explanation (an artefact someone else can read), and the whole
   annotation activity exists so the reader ends up holding the second kind.

## The limitation the week exposes

*A fluent explanation can conceal missing relations, causes, boundary conditions
and dependencies.* It is stated in that form on the deck and in lecture §5, and
immediately qualified: it does not mean explanations are worthless, that
everybody fails, or that confident speakers are bluffing.

The "if your explanation held up" slide and lecture subsection take a successful
reader seriously and say exactly what success establishes (this explanation, of
this object, in writing, at this moment, unaided) and what it does not (surviving
an unanticipated probe; any other mechanism). Nothing in the three pages requires
the reader to fail.

## Solo route and what it loses

The core lesson is already solo: the zip protocol needs one person and nothing
else. The paper-swap is presented as the paired version, and the solo route
repeats the protocol on a second everyday mechanism with one freely available
technical description.

The loss is stated in one sentence on all three pages: **with no second person
there is no independent check on whether the explanation actually satisfied
someone who knows the material.** Two consequences are spelled out — you grade
your text against a description you have only just read, so you cannot tell
whether you would have produced the missing step unprompted; and every probe you
face is one you chose, so you are never surprised.

## Outstanding items for the integration session

1. **Intended edge to Week 3, not yet created.** Week 3's files do not exist, so
   no `related:` ref to them was added (a dangling ref fails the build). The
   intended edges, to add once Week 3 lands:
   - `src/content/lectures/week-02.md` → `lectures/week-03`
   - possibly `src/content/sessions/02-first-review.md` → the Week 3 session
   Week 3's question is named in prose on the deck's closing slide, in lecture
   §"What this leaves unresolved", and at the end of the session page: *what
   becomes visible when the answer is no longer in front of us?* The handover
   claim the three pages set up for Week 3 to test is that **reconstruction is
   harder to fake than explanation**. Week 3's author may want to pick that
   sentence up verbatim.
2. **Slug and title mismatch, accepted by the user.** The session keeps its
   starter slug `02-first-review`, so the URL reads `/sessions/02-first-review/`
   for a page now titled "What your explanation leaves out" — a paper-swap
   investigation with no review in it. The user decided the slug stays. If the
   integration session ever renames it, the collection key, the file name, the
   page URL, the API path and every inbound ref must move together, and the
   inbound refs are `related: sessions/02-first-review` in
   `src/content/lectures/week-02.md` plus the two deck links
   `../../sessions/02-first-review/`.
3. **The `assessments/assignment-1` edge is earned, but thinly.** The session
   page justifies it in one sentence: this is the first piece of work that
   rehearses what Assignment 1 asks for — a judgement about a performance, made
   from evidence produced under stated conditions and qualified by what that
   evidence cannot reach. The edge was kept rather than dropped. The caveat is
   that `src/content/assessments/assignment-1.md` is **still starter content**,
   so the justification is written against the assessment's `spec:` lines ("the
   work is yours, with any assistance declared") rather than against a real
   brief. When the assessment page is written, re-read that sentence and either
   sharpen it or drop the edge.
4. **`pnpm check:evidence` will still fail** until the remaining tracked
   `STARTER_CONTENT` markers elsewhere are removed. Both of this week's were
   deleted. Others survive in at least `src/content/assessments/assignment-1.md`
   and `src/course-config.ts`, neither of which this session may touch.
5. **Week 1's lecture has no `teachers:` key** while Week 2's does (kept from
   the starter). Not a schema problem — `teachers` is optional — but the
   listings will look inconsistent. A decision for integration, not a change
   this session should make.
6. **Deck length.** 35 slides against Week 1's 24. The extra length is the
   three-slide expert description plus the boundary-condition slide, which
   `guidelines.md` prefers over compressed reasoning. Flagging it in case the
   integration session wants the target tightened across weeks.

## Evidence level

**Drafted and editorially checked.** Not visually reviewed, not built, not type
checked.

- Read the deck start to finish as a reader with no lecturer, no prior knowledge
  of zips and no prior knowledge of the course. Two problems found and fixed:
  the annotation activity asked readers to look for boundary conditions when the
  expert description contained none (a boundary-condition slide and matching
  passages were added to all three pages), and the activity timings did not add
  up to the stated durations (deck, lecture and session now agree).
- Checked by inspection that claims, terminology, activity timings, the
  fictional-person labels and the resource conditions agree across the deck, the
  lecture and the session.
- Checked by inspection that no `STARTER_CONTENT` marker remains in either
  rewritten file, that companion links in the deck use the base-path-safe
  `../../lectures/week-02/` and `../../sessions/02-first-review/` form, and that
  the lecture and session use ordinary `/lectures/...`, `/sessions/...` and
  `/assessments/assignment-1/` markdown links. `/assessments/assignment-1/` was
  confirmed to be a real route (`src/pages/assessments/[slug].astro`).
- **Not run, at the user's instruction:** `pnpm check`, `pnpm check:evidence`,
  `pnpm build`, `pnpm dev`, the type check and any visual check. The MDX has not
  been compiled by anything. Four things in the deck are worth a first look when
  someone does build it: the `evidence-pair` two-column slide, the two
  `reading-entry` blocks, the `p &lt; .001` entities in a `source-note`, and the
  raw `&` inside the Rozenblit and Keil PDF href.
- No git operation was performed: nothing staged, committed, pushed or published.
