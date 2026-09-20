# Project brief — COMP4020 Assignment 2

A structured record of what this submission is, what is fixed, what is decided,
and what is still open. Written to be converted into a PRD once the Herdr board
has ruled on the open questions.

**Status legend.** Every requirement carries one:

| Status     | Meaning                                                                   |
| ---------- | ------------------------------------------------------------------------- |
| `FIXED`    | Imposed by the course brief, spec, or platform. Not negotiable.           |
| `DECIDED`  | My call, already made. Changing it needs a reason in the minutes.         |
| `PROPOSED` | A candidate, not yet ruled on. The board's input.                         |
| `OPEN`     | No position yet. Must be closed before the page that depends on it.       |

---

## 1. Marking context

Two layers of "assessment" run through this project and must never be conflated:

- **Marking** — how COMP4020 grades this submission. Section 1.
- **In-course assessment** — the assessments the fictional SlopU course sets its
  own students. Section 7.

### 1.1 What is being graded

`FIXED` Worth 20% of COMP4020. Three criteria, each out of 100:

| Criterion                 | Weight | What moves it                                                    |
| ------------------------- | -----: | ---------------------------------------------------------------- |
| Legibility of process     |  45%   | `PROCESS.md`, `CLAUDE.md`, `spec/`, commit history               |
| Working deployed artefact |  20%   | Does the deployed site work at both viewports                    |
| Response to the brief     |  35%   | Is the course one coherent, pointed idea                         |

`FIXED` Markers read the site as a prospective student would, for about ten
minutes: home page, a few non-adjacent weeks, an assessment, the deck, the
policies page, at both viewports. Then `PROCESS.md` against the commit history.

`FIXED` Band descriptors, abbreviated:

- Process HD — deliberate direction; failures fixed at the harness level rather
  than retried; judgement visible in what was thrown away; the account justifies
  why a call beat the obvious alternative.
- Artefact HD — holds up under use it wasn't designed for (keyboard, resize
  mid-interaction, slow connection).
- Response HD — pointed and surprising, scoped with judgement: one idea carried
  all the way.

### 1.2 Submission mechanics

- `FIXED` Due **noon Monday 21 September 2026**, 15-minute grace. The submission
  is the deployed state of the last commit pushed to `main` at the deadline.
- `FIXED` No late submissions. Extensions granted routinely if requested
  **before** the deadline via the School of Computing extension app.
- `FIXED` Repo starts private; flip public with the course `/ship` skill before
  the deadline. The whole history and CI logs go public with it.
- `FIXED` Marking environment: latest stable Chrome at **1920×1080** and
  **390×844**. Both are full marking environments.
- `FIXED` Individual assessment.

---

## 2. Fixed constraints

### 2.1 From the spec

| ID    | Requirement                                                                      |
| ----- | -------------------------------------------------------------------------------- |
| FIX-1 | Deployed and live at its public GitHub Pages URL by the deadline, working at both marking viewports |
| FIX-2 | One niche course at Slop University, under a `SLOPxxxx` code keeping the three digits the repo arrived with, running across **twelve dated teaching weeks** |
| FIX-3 | At least one lecture carries a real deck, linked from its page                    |
| FIX-4 | In-course assessment that adds up to **100%**                                    |
| FIX-5 | Own checks in `spec/`, protecting promises the build cannot; `pnpm check` and `pnpm check:evidence` pass |
| FIX-6 | Evidence of process in the repo: `PROCESS.md`, `CLAUDE.md`, and a commit history that grew with the work |

### 2.2 From the brief

- FIX-7 `PROCESS.md` runs to **400–600 words**, written by me for a reader, with
  commits cited as links. `check:evidence` fails a `PROCESS.md` with no
  citations. No separate reflection for this assignment.
- FIX-8 Niche: narrow enough that no real university would run it, deep enough
  for a semester. A course that would pass unnoticed through a curriculum
  committee is too broad; the starter with the nouns swapped is too low-effort.
- FIX-9 Restyling is not required. The artefact criterion asks whether the site
  works, not what it looks like.
- FIX-10 Template artwork must be replaced — `check:evidence` will not pass it.
- FIX-19 A **stated position on what a good course is**, arrived at by looking
  at other courses and at education theorists, and **incorporated into the
  harness** — reported in `PROCESS.md` as which of those decisions became a
  `CLAUDE.md` rule or a `spec/` check, and which were deliberately left out.
  Brief, verbatim: *"Courses, universities and education theorists all have
  their own things to say about designing a course, and looking around at a few
  is part of your job. What you take from that is a position on what a good
  course is, and you get to tell us about how you incorporated that into your
  harness in your `PROCESS.md`."* This sits inside the 45% criterion; §11 is
  where it is discharged.

### 2.3 From the platform

- FIX-11 Course code must match `SLOP[1|2|3|4|6|8]\d{3}`, and `level` must equal
  the code's first digit. The repo arrived as `SLOP1152`; **keep `152`**.
- FIX-12 `courseMeta` fields: `title` ≤100 chars, `session` ≤40, `year` ≥2026,
  `description` **80–300 chars**, `tags` 1–3 entries of 2–24 chars,
  `startDate` ≤ `endDate`.
- FIX-13 `spec/data-integrity.test.ts` asserts all dated material falls inside
  `[startDate, endDate]`. Every session date, lecture date and in-course due
  date must sit inside the declared course period.
- FIX-14 Collections are `sessions`, `assessments`, `lectures`, `people`. Weeks
  are integers 1–12. Sessions and lectures need `week` + `date`; lectures may
  carry `slides: /decks/<slug>/`; assessments need `week` + `due` + `weight`.
- FIX-15 Assessment `marking` is either `weighted` (criteria weights summing to
  exactly 100) or `holistic` (description ≥40 chars).
- FIX-16 People need `role` and a `description` ≥40 chars; a `photo` requires
  `photoAlt`.
- FIX-17 Content nodes carry `spec:` line arrays and `related:` reference edges.
  `related` renders on both ends, so week-to-week dependency is expressible as
  graph structure rather than only prose.
- FIX-18 The build already owns compilation, accessibility (axe), internal
  links, content references, API generation and deck compilation. `spec/` is for
  what the build cannot check.

---

## 3. Course concept

| ID    | Status     | Item                                                                     |
| ----- | ---------- | ------------------------------------------------------------------------ |
| CON-1 | `DECIDED`  | **Object of study:** the gap between familiarity and understanding.      |
| CON-2 | `DECIDED`  | **Subject position: the examiner's, not the learner's.** The course asks how you find out whether someone understands something — including yourself. |
| CON-3 | `DECIDED`  | **Method:** designing and running instruments that make the gap visible. |
| CON-4 | `PROPOSED` | **What students build:** a battery of tests, and a defensible account of what each one can and cannot detect. |
| CON-5 | `DECIDED`  | **Thesis to complicate, not prove:** consumption produces familiarity; reconstruction produces understanding. Reconstruction is the best instrument available, not a virtue. |
| CON-6 | `DECIDED`  | **Domain-neutral.** Students test each other on whatever they already know. The course must not inherit my computing background. |
| CON-7 | `PROPOSED` | **The course ends unresolved.** Final week presents the case the course cannot settle: an argument memorised from an AI passes every rung of the instrument. Do you understand it? |

### 3.1 Why CON-2 is load-bearing

The earlier drafts were written entirely in the learner's verbs (*they map it,
they explain it without the source*). Read cold, they scan as a study-skills
unit — which fails FIX-8 on niche-ness and caps Response. The examiner frame is
what makes the course narrow, gives it a literature, and makes CON-6 possible.

`PROPOSED` The frame must therefore be legible in the first screen of the home
page, not inferable from the week list.

---

## 4. Identity

| ID   | Status | Item                                                                        |
| ---- | ------ | --------------------------------------------------------------------------- |
| ID-1 | `OPEN` | Course title. Candidates: **How Would You Know?** (a stance, re-askable every week); **I Get It, I Think** (my earlier working title; names the phenomenon); **The Comprehension Test** (deadpan, institutional). Title must read at semester scale, not as one week's activity. |
| ID-2 | `OPEN` | Level digit, hence `level`. See §4.1. Does not affect the grade. |
| ID-3 | `OPEN` | Course period (`startDate`, `endDate`), `session`, `year`. Constrains all dates per FIX-13. |
| ID-4 | `OPEN` | `description`, 80–300 chars. This is the catalogue line and the first thing a marker reads. |
| ID-5 | `OPEN` | `tags`, 1–3. |
| ID-6 | `OPEN` | Replacement artwork per FIX-10. |

### 4.1 What the ANU level digit actually encodes

ANU's first digit encodes **position in a program and level of demand** —
prerequisites, progression, and how many of that level may count toward a degree
— not how foundational the subject matter is. ANU policy deliberately avoids
"first year" / "later year" language and refers only to catalogue groupings.

| Level | Meaning at ANU                                                        |
| ----: | --------------------------------------------------------------------- |
|  1000 | Introductory, typically no prerequisites, taken on first enrolment. Capped: at most ten 1000-level courses count toward a single degree, six in a double. |
|  2000 | Intermediate, usually building on 1000-level prerequisites.           |
|  3000 | Advanced undergraduate; normally requires specific 2000-level courses. |
|  4000 | Honours / advanced undergraduate.                                     |
|  6000 | Graduate-entry or foundational masters.                               |
|  8000 | Advanced masters, often with a capstone or research component.        |

`FIXED` The brief permits 1xxx–4xxx (UG) or 6xxx / 8xxx (PG). `course-config.ts`
enforces `SLOP[123468]\d{3}` and requires `level` to equal the code's first
digit, so the code and the `level` field must be edited together. Keep `152`.

**The case for keeping `1`.** Genuinely real: the course has no prerequisites,
is domain-neutral (CON-6), and arguably belongs early — it is about how you tell
whether you understand anything else. Zero mechanical risk, since `SLOP1152` /
`level: 1` already validate. There is also satire available in the 1000-level
cap: a course on whether you understand anything, which only ten of your degree
may contain.

**Why I think it works against the submission anyway.** Three reasons, and they
compound:

1. **It amplifies the misread we are specifically defending against (§3.1).** A
   1000-level, no-prerequisite, domain-neutral course about understanding is
   indistinguishable from an academic-skills unit. The level digit sits in the
   course code at the top of every page, and a marker reads it in a second.
2. **It contradicts CON-2.** The examiner's chair is not an introductory
   position. First-enrolment students are not assessing whether anyone else
   understands; they are the ones being assessed. Week 11 (design an instrument
   and administer it to a person) and A2 (report what your test accidentally
   measured) are upper-level tasks.
3. **It pulls against niche-ness (FIX-8).** 1000-level courses are by design
   broad and high-enrolment. "Narrow enough that no real university would run
   it" points the other way.

**Recommendation.** `SLOP4152`, `level: 4` — a small, demanding, advanced
elective, which is the shape FIX-8 describes. Take `SLOP8152`, `level: 8`
instead if the board rules that the course's audience is explicitly people who
will have to teach or assess others (tutors, trainers, instructional designers);
that is the most coherent reading of CON-2 and removes the study-skills misread
almost entirely, at the cost of narrowing the `student` seat's persona.

Note the distinction driving this: the *subject matter* is foundational, but
"foundational" and "introductory" are different axes. Philosophy of science,
research methods and assessment design are all foundational and all normally
taught high.

---

## 5. The instrument

| ID    | Status     | Item                                                                     |
| ----- | ---------- | ------------------------------------------------------------------------ |
| LAD-1 | `DECIDED`  | The course builds its own seven-rung instrument: Recognition → Recall → Reconstruction → Explanation → Justification → Challenge → Boundary. |
| LAD-2 | `PROPOSED` | The ladder gets its own page, and the site says why it was built rather than borrowing Bloom's. |
| LAD-3 | `PROPOSED` | Every week names which rung(s) it targets. Every in-course assessment names which rungs it claims to measure. |
| LAD-4 | `PROPOSED` | The ladder is not presented as settled: the rungs are neither strictly ordered nor all necessary, and the final week attacks it. A course that presents its own instrument uncritically is doing the thing it criticises. |
| LAD-5 | `PROPOSED` | The ladder page carries the operational definitions of "understanding" and "reconstruction" that the earlier drafts left undone. |

---

## 6. Curriculum

`PROPOSED` Twelve weeks. The arc: destabilise (1–3), replace (4–5),
stress-test (6–10), deploy (11), unsettle (12). Every week is an instrument or a
threat to one.

| Wk | Working title                | Purpose                                                     | Rung(s) |
| -: | ---------------------------- | ----------------------------------------------------------- | ------- |
|  1 | Too Much to Know             | Everyone sounds like they understand. Problem statement.     | —       |
|  2 | What Are We Even Measuring?  | Defining understanding. Knowing-how vs knowing-that.        | 1–2     |
|  3 | The Feeling of Progress      | Illusion of explanatory depth, run live. **Deck week.**      | 1       |
|  4 | The Ladder                   | The course's own instrument, introduced and justified.       | all     |
|  5 | Close the Tab                | Source removal as probe *and* intervention.                  | 2–3     |
|  6 | The Missing Step             | Hidden warrants and prerequisites.                           | 5       |
|  7 | Break It                     | Counterexamples, changed conditions, finding the boundary.   | 6–7     |
|  8 | Two Sources, One Disagreement| Conflict as an instrument.                                   | 6       |
|  9 | Predict Before Looking       | Prediction as evidence; transfer.                            | 4–7     |
| 10 | Explain It to Whom?          | Audience as instrument. A test that works on one reader only is measuring the wrong thing. | 4 |
| 11 | Build a Bad Test             | Design an instrument, run it on a person, watch it miss a fake. | all  |
| 12 | What We Still Can't Detect   | The unresolved case (CON-7). Attack the ladder.              | —       |

### 6.1 Week-page requirements

| ID    | Status     | Requirement                                                             |
| ----- | ---------- | ----------------------------------------------------------------------- |
| CUR-1 | `PROPOSED` | Every week carries something to read. No week is pure activity.         |
| CUR-2 | `PROPOSED` | Consistent skeleton — the question / the reading / the in-class experiment / what you leave with / what's due — with sharply different content per week. Consistency reads as design; repetition reads as slop. |
| CUR-3 | `PROPOSED` | No two weeks are interchangeable. If two could swap places with no loss, one is not a week. |
| CUR-4 | `PROPOSED` | Dependency is expressed as `related:` edges (FIX-17), not only prose, so weeks 11–12 visibly rest on 4–10. |
| CUR-5 | `PROPOSED` | Week pages are specific to this course's content. Generic instructions ("this week, map your object") read as the template the brief warns about. |
| CUR-6 | `OPEN`     | Twelve dates inside the declared course period (FIX-13).                |

### 6.2 Deliberately rejected

Kept here because the rejections are evidence (see EVI-4).

- A week-per-technique syllabus (doomscrolling / note-taking / active recall /
  spaced repetition). Rejected: it kills the thesis and becomes Study Skills 101.
- Reconstruction as automatically superior. Rejected: becomes self-help; also
  false, since consumption is necessary scaffolding.
- Unlimited student topic choice. Rejected: makes marking incoherent and lets
  students pick what they already know.
- A computing-centric curriculum. Rejected per CON-6.
- The learner's subject position. Rejected per CON-2 — **this reversal is the
  single most valuable item in the process record.**

---

## 7. In-course assessment

**Count: three, plus an optional participation component.** The `ASM-*` entries
below are *requirement* IDs, not assessments — nine requirements describing
three assessments. (Earlier revisions of this section read as though there were
nine; there never were.)

| Slot | Name                              | Tests                          | ID    |
| ---- | --------------------------------- | ------------------------------ | ----- |
| A1   | Explain It Without the Explainer  | structural / self-measurement  | ASM-1 |
| A2   | *(open — see ASM-3, ASM-4)*       | instrument design on a person  | ASM-3 |
| A3   | *(working title: transfer)*       | application in a new context   | ASM-5 |

`FIXED` (FIX-4) Weights must total **100%**. There is **no required number of
assessments** — the spec's only assessment constraint is that it adds up to 100%.
Three is my design choice, not an obligation; two or four would satisfy the spec
equally. `FIXED` (FIX-15) Each needs a `marking` block.

> **Do not confuse this with COMP4020's own structure.** COMP4020 sets four
> components (weekly crits, A1, A2, final project). That is the outer course
> marking me. The three above are what the fictional SlopU course sets its own
> students. See §1.

*previous draft*

| ID    | Status     | Item                                                                     |
| ----- | ---------- | ------------------------------------------------------------------------ |
| ASM-1 | `DECIDED`  | **A1 — Explain It Without the Explainer.** Learn something unfamiliar, close the sources, reconstruct from memory, test against authority, produce a short explainer video showing the corrected model. Self-measurement. |
| ASM-2 | `DECIDED`  | A1 requires a reflective beat inside the artefact itself ("the part I initially misunderstood was…"), not a separate journal. Lightweight by design. |
| ASM-3 | `OPEN`     | **A2.** Candidate: *build an instrument and run it on a person* — design a test for something a peer claims to understand, administer it, report what it detected, what it missed, and what it accidentally measured instead. Peer-based, domain-neutral, unfakeable by a polished artefact. |
| ASM-4 | `OPEN`     | The original A2 (history/development of a concept) is off-spine under CON-2. Possible save: trace how a *field* decided what counts as proof of competence — driving tests, pilot licences, the viva voce, sommelier exams. A history of measurement rather than of technology. |
| ASM-5 | `PROPOSED` | **A3 — transfer.** Can you use the model somewhere it was not shown to you. |
| ASM-6 | `PROPOSED` | Every in-course assessment carries all three layers — reconstruction, verification, revision — varying which dominates. Dropping them decouples the assessments from the thesis. |
| ASM-7 | `PROPOSED` | Criterion names restate the ladder (LAD-3), so alignment is visible rather than asserted. |
| ASM-8 | `DECIDED`  | Topic constraint, to avoid shapeless freedom: unfamiliar to the student, narrow enough to reconstruct inside the assignment, supported by credible sources, and testable by explanation, prediction, application or comparison. |
| ASM-9 | `OPEN`     | Weight split across A1/A2/A3 plus any participation component, totalling 100. |

---

## 8. Intellectual grounding

`PROPOSED` One named reading per week minimum (CUR-1), with a sentence on why
that reading and not another.

| ID    | Source                                              | Lands in |
| ----- | --------------------------------------------------- | -------- |
| REF-1 | Rozenblit & Keil (2002), illusion of explanatory depth — includes a runnable protocol | Wk 3, deck |
| REF-2 | Wiggins & McTighe, *Understanding by Design* — specify the evidence of understanding first, then design backwards. The course's method, named. | Wk 2, 4 |
| REF-3 | Ryle — knowing-how vs knowing-that                  | Wk 2 |
| REF-4 | Bjork — desirable difficulties (the source under *Make It Stick* ch. 4) | Wk 5 |
| REF-5 | Chi — the self-explanation effect; evidence reconstruction works | Wk 5 |
| REF-6 | Toulmin, *The Uses of Argument* — claim/reason/warrant, the original behind *The Craft of Research* | Wk 6 |
| REF-7 | Biggs (1996), constructive alignment                | Wk 4, assessments |
| REF-8 | Sweller — cognitive load; the honest counterweight to CON-5 | Wk 1 or 5 |

`DECIDED` *Make It Stick* and *The Craft of Research* are trade-register
handbooks. They can frame weeks but cannot be the whole bibliography; the
primary sources sit underneath them.

`PROPOSED` The site carries a "where this model comes from" section, in the
register the COMP4020 assessment page uses for its own literature.

---

## 9. Site information architecture

Target is "twenty-odd pages that have to agree with each other". Twelve weeks
plus lectures plus assessments clears that without padding. **The risk is
sameness, not shortage.**

| ID    | Page                    | Collection    | Content requirements                                                     |
| ----- | ----------------------- | ------------- | ------------------------------------------------------------------------ |
| IA-1  | Home                    | `pages/index` | CON-2 legible in the first screen. The thesis in one breath. The loop as the visual identity: Encounter → Orient → Model → Attempt → Fail → Seek → Revise → Reconstruct. Who it's for / not for. The unresolved question (CON-7). |
| IA-2  | 12 week pages           | `sessions`    | CUR-1 … CUR-6. Real dates, `spec` lines, `related` edges.               |
| IA-3  | Lectures (≥1 real deck) | `lectures`    | FIX-3. Deck is week 3: run REF-1 live — rate your understanding of a zip 1–7, now explain it, now re-rate. A deck that demonstrates rather than lists. |
| IA-4  | The Ladder              | `pages` or a session | LAD-1 … LAD-5. Operational definitions.                          |
| IA-5  | Worked example          | `PROPOSED`    | One object carried publicly from consumption to reconstruction, including a deliberately **bad** instrument beside a good one. The fastest way a ten-minute reader grasps the course. |
| IA-6  | Assessments ×3 + index  | `assessments` | Section 7. Weights to 100, `marking` per FIX-15.                        |
| IA-7  | Policies                | `pages/policies` | AI policy (VOI-3), sources and integrity, the "Close the Tab" ritual written down as procedure, extensions. |
| IA-8  | People                  | `people`      | FIX-16. Convenor bio carrying both the joke and the seriousness.        |
| IA-9  | Learning outcomes       | `OPEN`        | Where these live — home page section or their own page. Needed for ASM-7 alignment to be legible. |
| IA-10 | 404                     | `pages/404`   | Cheap voice opportunity.                                                |

---

## 10. Voice and drift guards

| ID    | Status     | Item                                                                     |
| ----- | ---------- | ------------------------------------------------------------------------ |
| VOI-1 | `DECIDED`  | Intellectually serious, packaging with bite. Sincere-deadpan, not jokey. |
| VOI-2 | `PROPOSED` | The warrant example is the course in four lines and belongs early: *Alex watched 40 hours of calculus lectures, therefore Alex understands calculus.* Hidden warrant: consuming instruction produces understanding. |
| VOI-3 | `PROPOSED` | AI policy as subject matter, not rule: *you may use AI for anything in this course; the course is about whether we can tell.* |
| VOI-4 | `DECIDED`  | No study-skills vocabulary anywhere: "tip", "hack", "productivity", "routine". |
| VOI-5 | `DECIDED`  | Not a research-methods course. Toulmin is an instrument for auditing explanations, never a writing curriculum. |
| VOI-6 | `PROPOSED` | Prose must not read as AI slop. One voice across twenty pages; an agent writing content-shaped chunks is the default failure. |

---

## 11. Harness

`PROPOSED` Written **before** page generation, so generation has backpressure
and the manual pass isn't twelve rewrites.

### 11.1 The position the harness encodes (FIX-19)

Five claims about what makes a course good, each with a literature and each
traceable to a row in §11.2. This is the position `PROCESS.md` has to report.

| # | Claim | Source | Encoded as |
| - | ----- | ------ | ---------- |
| P1 | A course specifies the **evidence of understanding** before it specifies content. | Wiggins & McTighe, *Understanding by Design*, Stage 2 before Stage 3 | HAR-4, HAR-14 |
| P2 | Outcomes are **verbs a student must actually perform** for full marks. Test: if what earns full marks is a lower-order verb than the outcome, the course is misaligned however well it is taught. | Biggs (1996), constructive alignment | HAR-4, HAR-14 |
| P3 | A course carries a student through a **threshold**, rather than adding to a schema. Liminality's symptom is *mimicry* — right-looking language without the transformation. | Meyer & Land (2003, 2005) | HAR-13, and the course's own CON-7 |
| P4 | A course **knows what its own assessments cannot detect**. Validity is a judgement about inferences from scores, not a property of a test. | Messick (1989, 1995); Kane (2013) | **HAR-11** |
| P5 | Assessment is a **programme, not a method**: utility = reliability × validity × impact × acceptability × cost, multiplicative, and no high-stakes decision rests on one observation. | van der Vleuten & Schuwirth (2005) | HAR-13, HAR-14 |

P4 is the load-bearing one. A course about detecting understanding whose own
assessments do not say what they miss fails its own test, so HAR-11 is the check
that makes the course apply its thesis to itself.

### 11.2 The checks

| ID     | Kind          | Protects                                                              | From  |
| ------ | ------------- | --------------------------------------------------------------------- | ----- |
| HAR-1  | `spec/` check | "tip" / "hack" / "productivity" / "routine" appear nowhere            | VOI-4 |
| HAR-2  | `spec/` check | No two sessions lead with the same verb                               | CUR-3 |
| HAR-3  | `spec/` check | Every session names at least one reading                              | CUR-1 |
| HAR-4  | `spec/` check | Every assessment names the rungs it claims to measure                 | LAD-3, ASM-7, P1, P2 |
| HAR-5  | `spec/` check | Session `related` edges form the intended dependency chain            | CUR-4 |
| HAR-6  | `CLAUDE.md`   | Examiner frame: no page written entirely in the learner's verbs       | CON-2 |
| HAR-7  | `CLAUDE.md`   | Toulmin apparatus is an audit instrument, not a writing curriculum    | VOI-5 |
| HAR-8  | `CLAUDE.md`   | No invented course requirements; only the published spec is authoritative | — |
| HAR-9  | unenforced    | Voice quality (VOI-6) — a person judges this; recorded as deliberately unenforced |  |
| HAR-10 | `spec/` check | No session cites a lecture that was never written — named explicitly in the spec as one of the promises "yours" makes | FIX-6 |
| **HAR-11** | `spec/` check | **Every assessment page names what it cannot detect.** A required "what this misses" section on each assessment node | P4, FIX-19, CON-1 |
| **HAR-12** | `spec/` check | Every session cites at least one **primary** source, not only a trade-register handbook — enforces the §8 `DECIDED` line, currently unenforced | §8, HESF 3.1.2 |
| **HAR-13** | `spec/` check | **Exactly one** assessment is marked as the secured point. Securing every task is infeasible; securing none is negligent | VOI-3, P3, P5 |
| **HAR-14** | `spec/` check | **No orphan rungs, no unmeasured rungs**: every ladder rung is claimed by ≥1 session *and* ≥1 assessment, and no page claims a rung the ladder does not define | LAD-1, LAD-3, P1, P2 |
| **HAR-15** | `CLAUDE.md`   | SlopU's published identity may be **used** but never **invented**: schools, programs and units must match what `slop.university` publishes, or not be named | §14, FIX-11 |
| **HAR-16** | `CLAUDE.md`   | No page claims the method transfers generally unless an assessment requires it in a second, unrelated domain | CON-6, ASM-5 |

`FIXED` Test the contract, not the construction, so checks survive a change of
approach. `PROPOSED` Every accepted decision produces exactly one of: a check, a
`CLAUDE.md` rule, or a recorded deliberately-unenforced line.

### 11.3 Deliberately not in the harness yet

Recorded so the omissions are visible rather than accidental:

- **Anything depending on OQ-1, OQ-2 or OQ-3.** The board has not ruled. A check
  written now for a design the board may overturn is theatre.
- **Workload and the rung-matrix rendering.** A real approval body would demand
  an indicative workload figure and a taught/practised/assessed mapping. Both
  are content decisions, not contract decisions, so they belong on a page and in
  the minutes — not in `spec/` — unless the board rules otherwise.
- **Voice (HAR-9), unchanged.** Still the one thing a person has to judge.

---

## 12. Process evidence plan

Process is 45%, and is the criterion the design work currently does least for.

| ID    | Status     | Item                                                                     |
| ----- | ---------- | ------------------------------------------------------------------------ |
| EVI-1 | `DECIDED`  | Stage 1 — initial design thinking in a GPT 5.6 chat on my own subscription. Permitted outright ("use whatever agentic tools you like"), but it runs outside the ANU gateway, so **it is only evidence if it is committed here.** |
| EVI-2 | `DECIDED`  | Stage 2 — Herdr board: five agent seats (`moderator`, `designer`, `committee`, `student`), rules in `discuss-herdr-rule.md`. I chair and cast every ruling in my own words. |
| EVI-3 | `DECIDED`  | Stage 3 — compile rulings into this brief, then a PRD.                   |
| EVI-4 | `DECIDED`  | Minutes preserve disagreement and a **What I threw away** section per round. Section 6.2 is the current standing list. |
| EVI-5 | `DECIDED`  | Stage 4 — agentic page generation, against the harness from §11, not before it. |
| EVI-6 | `DECIDED`  | Stage 5 — my manual pass. A fault found here lands in `CLAUDE.md` or `spec/`, **never in a re-prompt.** This is the difference between the HD and D–Cr process bands. |
| EVI-7 | `PROPOSED` | Commit shape: design notes → board minutes → harness → content → deploy → `PROCESS.md`. A single end-of-weekend dump contradicts any account of directed process. |
| EVI-8 | `FIXED`    | `PROCESS.md` 400–600 words, my own narrative, commits cited as links. Spine: what I decided a good course looks like, which decisions I encoded (as a `CLAUDE.md` rule or a `spec/` check), and which I deliberately left out. |
| EVI-9 | `DECIDED`  | The seats are language models with mandates, not people. `PROCESS.md` says so plainly — a false account of process is the integrity breach, not the AI use. |
| EVI-10| `DECIDED`  | I must be able to defend every design decision without the transcripts. Markers may ask on the spot. |

---

## 13. Open questions for the board

Three questions actually change the site. Everything else I decide solo.

| ID   | Question                                                                    | Blocks |
| ---- | --------------------------------------------------------------------------- | ------ |
| OQ-1 | Is the examiner frame the course, and is it niche enough to satisfy FIX-8?   | IA-1, ID-1, ID-4 |
| OQ-2 | Does the twelve-week arc hold — does any week fail CUR-3?                   | §6, IA-2 |
| OQ-3 | Do the in-course assessments align to the ladder, and does A2 survive?       | ASM-3, ASM-4, ASM-9 |

Secondary, resolvable without a full round: ID-1 title, ID-2 level, IA-9
placement.

---

## 14. Out of scope

- The SlopU "programs and courses" catalogue page — explicitly not required.
- Restyling the starter (FIX-9). Effort goes to coherence, not skin.
- Changing SlopU's fixed identity: name, marks, palette, content collections,
  generated API.
- Building anything that isn't on the site. There is no separate curriculum
  document; every decision lands in the pages.

---

## 15. Risk register

| Risk                                                                    | Hits      | Mitigation            |
| ----------------------------------------------------------------------- | --------- | --------------------- |
| Site reads as study skills; niche-ness fails                            | Response  | CON-2 in first screen; HAR-6 |
| Twelve interchangeable week pages                                       | Response  | CUR-3, HAR-2          |
| Course is earnest but not pointed — D–Cr not HD                         | Response  | VOI-2, VOI-3          |
| Single end-of-weekend commit dump contradicts the process account        | **Process** | EVI-7               |
| Board improves the course but encodes nothing                           | **Process** |  §11 |
| Stages 1–3 stay uncommitted and invisible                               | **Process** | EVI-1               |
| Board consumes the build time                                           | Artefact  | 3 questions, Saturday stop |
| Placeholder artwork fails `check:evidence`                              | Artefact  | ID-6, FIX-10          |
| Dates fall outside the course period                                    | Artefact  | FIX-13, CUR-6         |
| Repo still private at the deadline                                      | Artefact  | `/ship` early         |

---

## 16. Timeline

Deadline noon Mon 21 Sep 2026. Today is Thu 17 Sep.

| When    | Work                                                                     |
| ------- | ------------------------------------------------------------------------ |
| Thu     | Commit design notes and this brief. Close ID-1, ID-2, ID-3.             |
| Thu–Fri | Board: OQ-1, OQ-2, OQ-3. Minutes committed per round.                   |
| Fri     | Harness (§11) committed before any content generation.                   |
| Sat     | Board closes regardless. Content generation: weeks, ladder, assessments. |
| Sat–Sun | Deck, policies, people, artwork. Manual pass per EVI-6.                  |
| Sun     | Deploy, both viewports, `pnpm check` + `check:evidence` green, `/ship`.  |
| Mon am  | `PROCESS.md` against the real history. Buffer.                           |

`OPEN` Whether to request an extension. The process design in §12 depends on a
history that developed over time; four days is tight for that to be true rather
than claimed, and short extensions are routine if requested before the deadline.
