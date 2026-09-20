# Week-to-week continuity gaps

## Targeted repair status — 21 September 2026

The audit below is retained as a historical finding list, not a description of
all current files. This repair used its locations and selected surrounding
passages; it did not repeat the twelve-week full reading.

- **C1, C4:** added explicit ladder bridges through W6–W10 and prior-week
  openings for W9–W11 in decks, notes and sessions; made W6’s closing preview specific.
- **C2:** checked Study 1, pp. 526–529, against the
  [primary paper](https://cogdevlab.yale.edu/sites/default/files/files/rozenblit%20&%20keil%20%202002.pdf).
  The item-count finding was an ambiguity, not a contradiction: eight test items
  across two sets, four per participant. Clarified W2/W4 and corrected W8’s
  unsupported additional-effect claim in deck and notes, including its later interpretation.
- **C3:** W4 now retrieves the W3 reconstruction; W5 retrieves the W4 rule.
  Both include fallbacks, a comparison task and a worked response in all three formats.
- **C5:** every session now relates to its own lecture; every lecture after W1
  relates to its predecessor. Existing additional links were preserved.
- **C6:** W11 now includes a fifth, live-collaborator decision and captures a
  prior claim, reason and confidence before the tasks, retained in its record.
- **C7:** named pre-commitment and validity, explained application/connection
  as candidate performances, and distinguished W5 recognition from W2 familiarity.
- **C8:** removed Nadia from W5’s unused cast list, corrected the lock promise,
  and added bridges for new cases. W12 explicitly returns to W1 and distinguishes
  its fictional case from the learner’s W11 record.
- **C9:** removed W2’s unsupported assessment claim/link and placeholder teacher
  attribution. **Still pending:** course identity/configuration and actual
  assessment/staff authoring. These require content decisions beyond continuity;
  no replacement title, assessment policy or staff identity was invented.
- **Joint details:** aligned W2 annotation timing, renamed W3’s X category to
  scenario, signposted repeated W2 concepts, aligned the W4 ladder preview,
  clarified the spine’s W2→W3 source-removal handoff and unified the paper-swap name.

**Verification:** targeted source inspection, local related-target checks and
whitespace checks only. No full-course re-audit, build, typecheck or visual review.
Added slides still need the user’s usual fit/readability check.

---


A continuity and relatedness audit of all twelve weeks, run as eleven
adjacent-pair checks: W1→W2, W2→W3, and so on through W11→W12. Each pair was
read in full (deck, lecture notes, session) against its two rows in
`docs/material.md` and the standard in `guidelines.md`.

**Evidence level.** This is editorial inspection of the source files only. No
build was run, no page was visually reviewed, and no external source was
re-verified against the original publication. Findings marked **[verified]**
were re-checked directly against the files after the pair audit reported them;
the rest are reported as the pair audit found them.

**Scope.** This document lists gaps only. It does not fix them, and it does not
re-state the large amount that is already continuous — the handoff prose between
weeks is, at the lecture-notes level, consistently strong.

---

## Summary of the eleven joints

| Joint | Handoff prose | Artefact chain | Verdict |
| --- | --- | --- | --- |
| W1 → W2 | sound | none claimed | clean |
| W2 → W3 | sound | none claimed | clean, minor term overload |
| W3 → W4 | sound | **promised, not delivered** | **blocking** |
| W4 → W5 | sound | **promised, not delivered** | **blocking** |
| W5 → W6 | sound | none claimed | clean |
| W6 → W7 | sound (notes only) | none claimed | notable |
| W7 → W8 | sound | none claimed | **blocking** (source conflict) |
| W8 → W9 | sound | none claimed | notable |
| W9 → W10 | sound (notes only) | none claimed | notable |
| W10 → W11 | sound | none claimed | notable |
| W11 → W12 | sound | **delivered correctly** | clean |

The pattern: the *prose* handoffs are reliably good. What breaks is everything
structural underneath them — kept records, the instrument, and the shared
citations.

---

## Part 1 — Course-level gaps

These are only visible across the whole sequence. No single adjacent-pair check
could have found them.

### C1. The ladder vanishes for four weeks, then returns as if it never left — **blocking** [verified]

Mentions per week, counted across deck + lecture + session:

| | W1 | W2 | W3 | W4 | W5 | W6 | W7 | W8 | W9 | W10 | W11 | W12 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| "ladder" | 0 | 0 | 0 | 4 | 29 | 2 | 0 | 0 | 0 | 0 | 14 | 15 |
| "rung" | 0 | 0 | 0 | 3 | 80 | 0 | 0 | 0 | 0 | 0 | 50 | 49 |

`docs/material.md` builds the instrument in W5 and then hands to W6: *"Now
attack those assumptions one at a time."* W6, W7 and W8 are meant to be those
three attacks. Only W6 frames itself that way, and it never names a rung. W7,
W8, W9 and W10 do not mention the ladder at all. W11 then resumes using the
seven rungs heavily (50 mentions), as though the student had been applying the
instrument continuously since W5.

For a student reading in order, the course's central construction is built,
abandoned for four weeks, and revived without reintroduction.

*Fix:* have W7 and W8 each name the specific ladder assumption they attack (as
W6 does), and have W9 and W10 state in one sentence what their findings do to
the instrument. Alternatively, add a short reorientation to W11 that rebuilds
the rungs before using them.

### C2. Rozenblit and Keil (2002) is described inconsistently across five weeks — **blocking** [verified]

The study is the course's most reused source: W2, W3, W4, W5, W8, W12.

**Item count conflict.**
- `src/content/lectures/week-02.md:219` — "sixteen graduate students at one university rated **four** items each"
- `src/content/lectures/week-03.md:284` — "explanation of **four** test items"
- `src/content/lectures/week-04.md:400` — "One of the **eight** items, as it happens, was a cylinder lock."

W4 is the outlier against W2 and W3.

**Significance conflict.** This one is subtler than a flat contradiction, and
worth reading carefully:
- `src/content/lectures/week-04.md:409-411` — "the study's own comparison between the explanation condition and the diagnostic condition **was not statistically significant**"
- `src/content/lectures/week-08.md:107-111` — "Self-ratings fell further after the diagnostic question than after writing the explanation alone: ... the planned contrast between the **pre-explanation** rating and the **post-diagnostic** rating was itself significant at p < .002."

W8's sentence makes the explanation-vs-diagnostic comparison — the exact
comparison W4 says was not significant — but the statistic it cites measures
something else (pre-explanation vs post-diagnostic). So the number does not
support the sentence it is attached to, and the sentence contradicts W4.
`guidelines.md` §3 step 6 requires the claim be no broader than the source
warrants.

**Compounding this:** W8 reintroduces the study as "Grounding this in a study"
with no signpost that W4 already used it, the same cylinder-lock item, and the
same sample.

*Fix:* verify Study 1's procedure against the paper once, correct whichever
weeks are wrong, make W8's statistic match the claim it supports, and add
"as Week 4 introduced" signposting.

### C3. Two weeks tell the student to keep a record that the next week never asks for — **blocking** [verified]

- `src/content/sessions/03-reconstruction.md:193` — "Preserve this with your annotated page. **Week 4 asks you to compare against it.**"
  Week 4 never does. A search across `week-04.deck.mdx`, `week-04.md` and
  `04-conditions.md` for any reference to the student's own Week 3
  reconstruction returns nothing. Week 4's activity judges a new fictional
  person's three responses instead, and `week-04.md:54-55` says "You do not
  need Week 3 for any of what follows."
- `src/content/sessions/04-conditions.md:285-287` — "keep your one-line rule from section 4 exactly as you wrote it, and **bring it**. It is the raw material."
  Week 5 never asks for it. A search across all three Week 5 files for the
  student's Week 4 rule returns nothing.

This is the sharpest continuity failure in the course: the student is twice
told to carry something forward, does so, and is never asked for it.

For contrast, the chain that *does* work:
`src/content/sessions/11-administering-an-examination.md:123` promises Week 12
will ask for the exam record, and `12-defending-the-inference.md` §1 does ask
for it, with a stated fallback for a student who lacks one. That is the model
the other two joints should follow.

*Fix:* either add the retrieval step to W4 and W5, or delete the promise from
the W3 and W4 sessions. The first is better — the promised comparisons are
genuinely good activities.

### C4. The decks carry weaker continuity than the lecture notes — **notable** [verified]

`guidelines.md` §1: "**Nobody will deliver these slides aloud.** Each deck must
work as a complete, self-guided lesson." The decks are the primary artefact, but
they are where the handoffs thin out.

Back-reference to the previous week, in the deck:

| Deck | Prior-week reference |
| --- | --- |
| W2, W5, W8 | explicit opening section, "Where Week N left us" |
| W3, W4, W12 | named in the opening slides |
| W6, W7 | present, but buried (line 48, line 56) |
| **W9, W10, W11** | **none anywhere in the file** |

W9, W10 and W11 decks open cold. Their lecture notes do not — `week-10.md` §1
is titled "Where Week 9 left us" and states the handoff correctly. So a student
who reads only the decks, which is the intended use, gets a materially weaker
thread than one who reads the notes.

*Fix:* give the W9, W10 and W11 decks the "Where Week N left us" opening slide
that W2, W5 and W8 already use, and lift W6's and W7's buried sentence to the
top.

### C5. The `related:` graph is inconsistent — **notable** [verified]

Lecture frontmatter mostly chains backwards (W3→W2, W4→W3, W5→W4, W6→W5,
W7→W6, W8→W7, W9→W8), but:
- `week-02.md` omits `lectures/week-01` — the chain is broken at its first link.
- `week-11.md` lists only `sessions/11-…` and `lectures/week-05`, omitting
  `lectures/week-10`, despite W11 drawing substantively on W1, W2, W4, W6 and W8.

Sessions are worse: only `02-first-review`, `07-change-the-form` and
`10-with-a-collaborator` have a `related:` field at all. The other nine link
only in prose.

Nothing here is a broken link — every target that *is* listed resolves. It is
an incomplete graph, not an invalid one.

*Fix:* add the two missing lecture back-links, and decide one convention for
sessions and apply it to all twelve.

### C6. Week 11 does not reuse the two weeks immediately before it — **notable**

`docs/material.md` lists Week 11's content as including "prior states (W9)" and
"collaborators (W10)". Neither appears: "collaborator" returns zero hits across
all three Week 11 files, and "prior state" returns zero hits in `week-11.md`.
Wren's four design decisions (topic, resources, notice, target rungs) have no
decision about whether the subject may use a collaborator during the exam —
which is exactly the unresolved problem W10 hands forward.

*Fix:* add a fifth decision covering live collaborator access, and a step that
captures a prior claim from the subject before administration.

### C7. Spine vocabulary that never reaches the page — **notable**

Three terms `docs/material.md` names as content are never used in the week that
should teach them:
- **"application" / "connection"** — listed as W5 candidate rungs; the built
  ladder is Recognition, Recall, Reconstruction, Explanation, Justification,
  Challenge, Boundary. Defensible (the spine says "etc.", and the ladder is a
  course construction) but undeclared.
- **"pre-commitment"** — W9's first listed content term; W9 teaches only
  "prior state".
- **"validity"** — W12's first listed content term; zero matches across all
  three W12 files, although the substance is taught.

*Fix:* either name each term once where its substance is taught, or record the
substitution deliberately so the spine stays traceable.

### C8. The recurring cast fragments after Week 5 — **minor**

W1–W5 build a shared cast (Sam, Nadia, Theo, Priya, Rowan) and W5 leans on it
hard. From W6 every week introduces a fresh one-off person — Elena, Kavi, Elin,
Marlow, Wren and Petra, Farhan — with no bridge acknowledging the change. Also:
W5 names **Nadia** as a returning character in all three of its files, but she
appears in none of its five classification examples.

Related: `week-05.md` closes by saying next week "holds the lock ... fixed";
W6 drops the lock entirely for a new courier scenario.

*Fix:* drop Nadia from the W5 intro list or give her an example; soften W5's
closing promise; add a one-sentence bridge where the cast changes.

### C9. Starter placeholders are referenced as though authored — **minor** [verified]

- `src/content/sessions/02-first-review.md:34-37` makes a specific claim about
  what Assignment 1 asks for. `src/content/assessments/assignment-1.md` is
  still unedited starter content with its `STARTER_CONTENT` marker.
- `week-02.md` and `02-first-review.md` set `teachers: [idris-fenn]`.
  `src/content/people/idris-fenn.md` is still starter placeholder text. No
  other week sets `teachers:`.
- `src/course-config.ts` still holds `title: "Course Title Goes Here"`,
  `tags: ["replace me"]` and the placeholder description.

These resolve on disk, so they are not broken references, but the claims made
about them cannot currently be checked against their targets.

---

## Part 2 — Joint-by-joint gaps

### W1 → W2 — clean
- **minor** Activity timing disagrees inside Week 2's own three files: deck
  `week-02.deck.mdx:158` "4 minutes", lecture "Allow four minutes",
  session `02-first-review.md:111` "5 minutes".
- See C9 for the Assignment 1 and `idris-fenn` placeholder issues.

### W2 → W3 — clean, one term problem
- **notable** "Condition" carries three different technical meanings with no
  disambiguation: administration circumstance (W1, recapped in both),
  **boundary condition** = where a mechanism stops working
  (`week-02.deck.mdx:150`), and **condition** = an omitted scenario in Week 3's
  annotation scheme (`week-03.md:160`). Same word, same course, three senses.
  *Fix:* rename Week 3's "X" category to "scenario" or "case".
- **minor** W3 reintroduces "diagnostic question" in bold with a narrower gloss
  (`week-03.deck.mdx:98`) as though new; W2 already defined it
  (`week-02.deck.mdx:98`).
- **minor** W3 re-derives W2's "a self-rating is not a performance" conclusion
  independently (`week-03.md:298-300` vs `week-02.md:233-238`), reading as
  rediscovery rather than reinforcement.
- **observation, for the curriculum owner** `docs/material.md`'s W2 handoff cell
  says reconstruction "under changed conditions", but changed conditions are
  W4's content. W3 correctly uses one condition. The ambiguity is in the spine's
  phrasing, not in either week.

### W3 → W4 — blocking
- **blocking** Artefact promise unfulfilled. See C3.
- **notable** Rozenblit item count conflict. See C2.
- **minor** W4's deck and lecture describe the forthcoming ladder differently:
  deck `week-04.deck.mdx:505-506` "up to naming where your own explanation stops
  working"; lecture `week-04.md:368-369` "up to connecting it to other things".
  The deck version accidentally names the real top rung (Boundary), spoiling
  W5's reveal for deck-only readers.

### W4 → W5 — blocking
- **blocking** Artefact promise unfulfilled. See C3.
- **notable** The W4 deck/lecture disagreement above means W5's framing —
  "that was a placeholder, here is the precise version" — is only accurate for
  one of the two W4 files.
- **notable** "Recognition" shifts meaning. W2 (`week-02.md:50-52`) defines it
  as a subjective feeling carrying no evidential weight. W5 Rung 1
  (`week-05.deck.mdx:91-99`) makes it an operational, gradable unit of evidence.
  Not contradictory, but the shift is unsignposted.
- **minor** Nadia listed but absent. See C8.
- **minor** Ladder diverges from the spine's candidate rungs without comment.
  See C7.

### W5 → W6 — clean
- **minor** W5 closes promising next week "holds the lock ... fixed and changes
  only what a person is allowed to consult"; W6 opens a new courier scenario
  and drops the lock entirely. Partially hedged by "or whatever mechanism you
  are using".
- **minor** Recurring cast dropped without transition. See C8.
- Verified clean: rung wording for rungs 2–3 is quoted verbatim and correctly;
  Clark and Chalmers is *built on* (W6 is first to use §4, the four conditions)
  rather than duplicated from W1.

### W6 → W7 — notable
- **notable** The lecture-notes handoff is strong and near-verbatim, but the
  decks do not carry it: W6's closing slide
  (`week-06.deck.mdx:235-239`) drops the specific preview, and W7's deck does
  not reference W6 until line 56. See C4.
- **notable** W7 never names which ladder assumption it attacks, or that it
  differs from W6's. "Assumption" and "ladder" return zero hits across all three
  W7 files. See C1.
- **minor** `06-what-you-can-use.md` has no `related:` field while
  `07-change-the-form.md` does. See C5.

### W7 → W8 — blocking
- **blocking** The Rozenblit significance conflict with W4. See C2.
- **notable** The same study, sample and cylinder-lock item are reused from W4
  with no acknowledgement that W4 already introduced them.
- **minor** `08-unannounced-question.md` has no `related:` field. See C5.
- Verified clean: the solo route exists and names its limit — "a partner who
  devised a good follow-up still cannot see what was in your head before you
  answered it."

### W8 → W9 — notable
- **notable** W9 has no "Where Week 8 left us" opening in either the lecture or
  the deck, unlike W8 itself (`week-08.md:28` "## 1. Where Week 7 left us").
  The link to W8's unresolved problem exists only implicitly. See C4.
- **minor** "Pre-commitment" never used. See C7.
- **Checked and NOT a gap:** the lecture and session `.md` files use
  root-absolute links (`/sessions/09-prior-commitment/`). This was flagged as a
  base-path violation, but `week-01.md:165` — the approved model — does the
  same, and all twelve decks correctly use the `../../` pattern. This is the
  repo's established convention for prose files, not a defect. Recorded here so
  it is not chased again.

### W9 → W10 — notable
- **notable** W10's *deck* never mentions Week 9, "prior state" or "prior
  commitment" anywhere; only `week-10.md` §1 carries the handoff. See C4.
- **minor** Activity name drift: W2 calls it the "knowledge paper-swap"
  (`week-02.md` §7 heading); W10 calls it the "knowledge-swap" throughout.
- **minor** `09-prior-commitment.md` has no `related:` field. See C5.
- Verified clean: the W2 swap is reconstructed accurately (same roles, same
  steps); no AI subscription is required; the AI exchanges are labelled as
  worked examples, not real output.

### W10 → W11 — notable
- **notable** W11 never reuses collaborators (W10) or prior states (W9). See C6.
- **minor** W11 has no "Where Week 10 left us" opening, unlike W10's own §1
  "Where Week 9 left us". See C4.
- **minor** `week-11.md` `related:` omits `lectures/week-10`. See C5.
- Verified clean: rung names match W5 exactly; the solo-rehearsal vs real-person
  distinction that `guidelines.md` §1 specifically requires for Week 11 is
  explicit in all three files.

### W11 → W12 — clean
- **notable** "Validity" never used or defined, despite being the spine's named
  W12 topic. See C7.
- **minor** `week-12.md` never names Week 1 directly, though the deck
  (`week-12.deck.mdx:212`) and session (`12-defending-the-inference.md:116`)
  both close the arc back to it explicitly.
- **minor** `week-11.deck.mdx:175-177` promises W12 takes "this exact kind of
  record" (Wren and Petra's); W12 introduces an unrelated new case, Farhan.
  Defensible, but the handoff line slightly overclaims.
- Verified clean: the artefact chain works, with a fallback; the course ends
  cleanly — `week-12.md:353` states "There is no Week 13" and no dangling
  forward reference exists anywhere.

---

## Part 3 — Suggested order of work

1. **C3** — the two unfulfilled record promises. Smallest edit, sharpest
   student-facing failure.
2. **C2** — settle the Rozenblit and Keil facts once, then propagate to W2, W3,
   W4 and W8.
3. **C1** — reconnect the ladder through W7–W10.
4. **C4** — add the missing deck openers (W9, W10, W11).
5. **C6**, **C7** — W11's missing W9/W10 reuse, and the three absent terms.
6. **C5**, **C8**, **C9** — graph, cast and placeholder tidying.

Items C1, C2 and C3 are the only ones a student reading the course in order
would actually trip over. Everything else is polish.

## Not checked

Per `guidelines.md` §6, the user performs build and visual checks. This audit
ran none. Not verified here: that the site builds, that any slide fits at
1920×1080 or 390×844, that `pnpm check` or `check:evidence` pass, or that any
cited source says what a week claims it says — C2 flags an internal
disagreement between weeks, which is a different thing from checking the paper.
