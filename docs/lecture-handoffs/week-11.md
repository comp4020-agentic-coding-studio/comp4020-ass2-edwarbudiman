# Week 11 handoff — Administering an examination

Authored as one of four parallel forked sessions (weeks 9–12), from the W11 row
of `docs/material.md` and `guidelines.md`. Weeks 9, 10 and 12 were being
written concurrently by sibling forks; nothing outside the four files below
was created, edited, renamed or deleted. `src/content/lectures/week-10.md` did
not exist on disk when I checked (before writing any `related:` edges), so no
edge into Week 10 was added anywhere; `src/content/lectures/week-05.md` did
exist, so that edge was added.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-11.deck.mdx` | New. 22 slides. |
| `src/content/lectures/week-11.md` | New. Continuous notes, 11 numbered sections plus a reading section and closing section. |
| `src/content/sessions/11-administering-an-examination.md` | New. ~40-50 minute investigation (design + real administration), with an explicit solo-fallback route. |
| `docs/lecture-handoffs/week-11.md` | This file. |

Frontmatter: lecture `week: 11`, `date: 2027-05-03`, `slides: /decks/week-11/`,
`related: [sessions/11-administering-an-examination, lectures/week-05]`, no
`teachers:`. Session `week: 11`, `date: 2027-05-03`, three `spec:` lines, no
`related:`. Deck frontmatter is `title` and `description` only, matching Week
1's shape. The date sits inside the teaching period in `src/course-config.ts`
(2027-02-22–2027-05-28) and continues the established weekly cadence I could
verify from files already on disk (W1 2027-02-22 → W8 2027-04-12, one week
apart throughout); W9's and W10's dates were not yet on disk to cross-check
against, but W11 = W8 + 3 weeks = 2027-05-03 follows the same +7-day-per-week
pattern exactly.

## The concept, the example, and why

The W11 row's content is: instrument design; task selection; resources;
notice; prior states; follow-ups; administration; fairness; what an
instrument cannot detect; the difference between knowing a topic and being
able to examine it. I built this around the course's existing ladder from
Week 5 (Recognition, Recall, Reconstruction, Explanation, Justification,
Challenge, Boundary), treated as the instrument students now actually use,
rather than inventing a competing scale — the guideline's curriculum-column
note that "Failure that must be produced" means a limitation to investigate,
not a required student failure, shaped how I framed the outcome: the worked
example produces useful evidence, not a decisive verdict, and says so.

**The example is new: Wren examines Petra on home espresso brewing.** Neither
name nor topic appears in any earlier week (I grepped `src/content/lectures/`
and `src/content/sessions/` for the six names already in use — Sam, Nadia,
Theo, Priya, Rowan, Elin — before choosing Wren and Petra). Coffee brewing
avoids the technology/networking category already used for Wi-Fi (Week 1) and
is distinct from the zip fastener, pin-tumbler lock, cyclist/navigation,
compound interest and bread-dough examples used in Weeks 2 through 8.

The lesson's structure follows Week 5's ladder explicitly: Wren writes four
tasks in advance, each aimed at a named rung, then administers them to Petra.
The worked point is that the record this produces is stronger than any single
earlier week's evidence (it spans four rungs from one live conversation,
under resources and notice decisions made on purpose) and still cannot settle
whether Petra's fluent Justification answer existed before being asked — the
same undecidable gap Week 8 found with Elin. That is the W11 "failure that
must be produced," stated precisely: a pass/fail/performance still does not
interpret itself, and I made the interpreting step visible rather than
skipped. This hands forward to W12 exactly as `docs/material.md` states:
"Final problem: what are we justified in concluding?"

### The one guideline requirement specific to this week

`guidelines.md` §1 names Week 11 explicitly: "For Week 11, a solo rehearsal
does not fulfil the separate aim of administering an examination to a real
person; make that distinction explicit." I treated this as a hard requirement,
not a nice-to-have, and it shows up in three places: a dedicated slide in the
deck ("Now, the part you cannot do alone"), a dedicated section in the
lecture notes (§5, titled the same way), and a dedicated section in the
session file (§5, "Solo route, and what it loses") that states the specific
loss — no independent second mind, so nothing about the rehearser's own
performance can be genuinely unanticipated — rather than a generic hedge.

### The activity design

`docs/material.md`'s anchor is "students design and administer a real
examination to another person." I split this into two layers to keep the
deck genuinely solo-completable per §1 of `guidelines.md` while keeping the
session's real task real: the deck's own Pause-and-write activity asks the
reader to *design* an instrument (topic, resources decision, notice decision,
three tasks labelled by target rung) — this is completable alone and has a
worked response on the next slide. The session then asks the reader to take
that design (or a fresh one) and actually administer it to a real second
person, with the fairness/consent framing from Week 11's own worked example
(Wren asks Petra first, picks a topic Petra has genuine standing in) repeated
as explicit instructions in the session's step 1.

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Booth, Colomb & Williams (2016), *The Craft of Research*, 4th ed., chapter 8 | **Synthesis text on argument structure** — grounds why an instrument's decisions need stated reasons, not a claim about cognition or examinations | I did not have live access to fetch or re-read the chapter text directly this session. The citation (title, edition, publisher, chapter number and title "Making Good Arguments: An Overview") matches the citation already used and trusted by `guidelines.md` itself, which names this exact book as one of the course's two recurring sources for "claims, reasons, evidence, warrants, objections and qualification" — the same territory chapter 8 covers by its own table-of-contents title. I made no page-number or quotation claim from it, per §3's rule that an unverified precise claim should be omitted rather than guessed; the citation supports only the general framing (arguments need stated reasons), not a specific quoted sentence. **This is a verification gap, flagged below**, not a fabricated quotation — no page number or direct quote appears anywhere in the three content files. |

I deliberately did not reuse Rozenblit & Keil or Clark & Chalmers this week —
both are already doing real work in Weeks 1, 2, 3, 5 and 8, and neither
speaks to instrument design or fairness in administration, which is this
week's actual new content.

## Verified by direct inspection vs not

**Directly verified by me:**

- `src/content/lectures/week-05.md` exists on disk and its seven-rung ladder
  (Recognition, Recall, Reconstruction, Explanation, Justification, Challenge,
  Boundary) with exact wording, read in full before reusing it, so Week 11's
  rung definitions match Week 5's, not a paraphrase drifted from it.
- `src/content/lectures/week-10.md` does **not** exist on disk (checked
  immediately before writing any `related:` edges), so no edge into Week 10
  was added.
- Character names Sam, Nadia, Theo, Priya, Rowan, Elin, grepped across all
  eight existing lecture and session files and all eight existing deck files;
  Wren and Petra do not collide with any of them.
- Frontmatter fields against `src/content.config.ts`: `week` is within
  `weekSchema`'s 1–12 range at 11, `date` is a valid ISO date inside the
  course period, `slides` matches `^/decks/[a-z0-9-]+/$`.
- Slide separator count (22 slides) and balanced `<div>`/`evidence-pair`
  tagging in the deck file, counted directly against the raw file.
- Internal links in all three files point only to `week-11` /
  `11-administering-an-examination`, or to Week 5's ladder by name in prose
  with a working link (`/lectures/week-05/`, verified that file exists).

**Not verified:**

- **No build, dev server, type check, MDX compile, visual check or link
  check was run**, per instruction. Nothing here establishes the deck fits or
  stays legible at 1920×1080 or 390×844.
- *The Craft of Research* chapter 8's exact content was not re-read by me this
  session (see sources table above) — the claim made from it is deliberately
  general enough not to depend on a specific passage, but this is still a
  softer verification than Week 1's or Week 5's direct-read sources, and
  should be checked against the actual chapter at integration before treating
  it as fully verified per `guidelines.md` §3's workflow.
- Whether weeks 9, 10 or 12 chose an example, character name, or session
  slug that collides with this week's choices (Wren; Petra; espresso
  brewing; `11-administering-an-examination`) — none of those files existed
  on disk when I checked, so I could not verify against them. Worth an
  integration-session check once all four land.

## Intended edges not yet created

- `src/content/lectures/week-11.md` → `lectures/week-10` (Week 11 does not
  name Week 10 by title in prose, since I had no sight of its actual content
  or title; the closing section refers back only to Week 9's "prior state"
  concept in passing and forward only to "Week 12," both by topic description
  rather than a specific claim about files I could not read).
- The reverse edge, `week-10` → `week-11`, if Week 10's author wants to name
  what it hands forward with a working link.
- `week-11` → `week-12` cannot be added; Week 12 does not exist yet. The
  lecture's closing section names it by topic in prose only.

## Risks and outstanding decisions

1. **Character and example collision risk.** Written without sight of weeks
   9, 10 or 12's choices. If another week also lands on a food/drink example
   or reuses "Wren" or "Petra," that should be caught and fixed at
   integration — I have no way to check it from here.
2. **The Craft of Research citation** (see sources table) should be verified
   against the actual chapter 8 text at integration before being treated as
   fully checked; I made only a general claim from it, not a quotation or
   page reference, specifically to stay inside what an unverified citation can
   safely support.
3. **Slide count.** 22 slides, on the shorter end of the range set by Week 1
   (24) and Week 8 (27). This week's worked example is a single sustained
   conversation (four tasks, one administration) rather than multiple
   conditions, so the shorter length tracks the amount of distinct worked
   material rather than being under-filled — a judgement call, flagged for
   review.
4. **The fairness/consent framing (§10 in the lecture notes, a dedicated
   slide in the deck) is new content not explicitly named in the W11 row of
   `docs/material.md`.** I added it because administering a real examination
   to a real person raises a genuine practical and ethical question the
   activity cannot respectably skip, and because Week 5 §4's "Challenge
   cannot be produced alone" already implies a fairness constraint on what an
   instrument can score. Flagged as an addition beyond the literal row, done
   deliberately rather than by drift.
5. **No shared-file change proposed.** `theme.css` was sufficient as-is; no
   class was added or modified.

## Evidence level

**Drafted and editorially checked.** I read the deck and lecture notes start
to finish as a student with no lecturer and no coffee-brewing expertise, and
confirmed: every ladder-rung claim about Petra's answers matches Week 5's
rung definitions exactly, quoted rather than paraphrased where precision
mattered; the four-decisions structure (topic/subject, resources, notice,
target rungs) is applied consistently across the deck, lecture notes and
session rather than diverging between files; the solo-vs-real-person
distinction required by `guidelines.md` §1 for this specific week appears
explicitly in all three content files, not only implied; and the fictional-
label sentence appears in the deck's worked-example slide and the lecture
notes' opening paragraph, matching Week 1's placement pattern.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at either marking viewport or any other. Text fit, legibility,
overflow and navigation on 22 slides, and the frontmatter/related edges
actually resolving once weeks 9, 10 and 12 exist, remain entirely unchecked,
per current instruction that the user performs build and visual checks.
