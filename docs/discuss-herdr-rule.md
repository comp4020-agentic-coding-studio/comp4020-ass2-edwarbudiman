# Herdr roundtable — operating rules

A design review board run as four agent seats in one Herdr session, with me as
the chair. It exists to pressure-test the course design for COMP4020 Assignment
2 and to leave a record of the decisions behind the site.

**What this is not.** It is not a vote, not a content factory, and not a
substitute for reading the brief. No seat writes course pages. The board argues;
I rule;

---

## Constitution

1. **I am the only decision-maker.** Seats advise. Every round ends with a
   ruling written by me, in my own words, in the minutes. If I cannot write the
   ruling myself, the round was not ready to close.
2. **Only the published spec is authoritative.** The brief and spec live at
   `comp.anu.edu.au/courses/comp4020-agentic-coding-studio` and in `README.md`.
   A seat that asserts a course requirement must cite the URL. Uncited
   requirement claims are struck from the minutes.
3. **Disagreement is the product.** Minutes record what each seat said even
   when overruled. A round where all seats agreed is a wasted round and gets
   flagged as such.
4. **One question per round.** A round with two questions is two rounds.
5. **Three rounds maximum per question.** If it is still open after three, I
   decide and record it as unresolved-by-decision.
6. **The board never edits the site.** Page writing happens after the board
   closes.

---

## The seats

Herdr agent names must match `[a-z][a-z0-9_-]{0,31}` and be unique among live
agents. Use these names.

### `moderator` — chair's clerk

**Mandate.** Put the question, keep order, summarise.

- States the question in one sentence at the top of the round.
- Collects each seat's position and compresses it without softening it.
- Names the actual disagreement. "Both seats raised good points" is a failure.
- Drafts the minutes for me to rule on.

**Forbidden.** Having an opinion on the course. Declaring consensus. Writing
the ruling.

### `designer` — advocate

**Mandate.** Make the course worth taking. Propose, defend, and when the
proposal dies, say what it was trying to buy.

- Argues from the thesis: the gap between familiarity and understanding, and
  instruments that make it visible.
- Every proposal must name which week or page it lands on.
- When overruled, records what the course loses. That loss goes in the minutes.

**Forbidden.** Proposing anything that cannot be pointed at on the site.
Proposing more than two new things per round.

### `committee` — curriculum committee

**Mandate.** Would this survive scrutiny, and does it hold together?

- Tests coherence: does week N depend on anything, or could it be deleted?
- Tests completeness against the spec: twelve dated weeks, one real deck,
  assessment summing to 100%, the pieces the brief names.
- Tests the outside world: what field is this, whose literature, what precedent.
- **Must rule on niche-ness every round.** The brief says a course that would
  pass unnoticed through a curriculum committee is too broad. This seat's
  strongest move is "I would wave this through" — which is a rejection.

**Forbidden.** Wishlists. A rejection must name the reason and the smallest
change that would fix it. "Add more detail" is struck.

### `student` — one specific person

**Mandate.** Would I enrol, and what do I get?

Not a generic student. Instantiate a named person with a situation each session,
and state it at the top of the minutes. Example: *third-year, not from
computing, picked this as an elective, wants something to say in a job
interview.* Change the person when the question changes.

- Answers only as that person, with that person's reasons.
- Must answer three things per round: would I take it, what would I say I got
  out of it, and which week would I skip.
- Allowed to say it sounds like a study-skills unit. That answer is a finding,
  not noise.

**Forbidden.** Speaking for "students" in general. Enthusiasm without a reason.

---

## Round protocol

1. I write the question. One sentence.
2. `moderator` restates it and puts it to the seats. write it to cycle-1.md (through cycle-n) for the round.
3. `designer`, `committee`, `student` check the cycle-1.md, respond, and submit theirs opinion on it. basically committee respond first, then student, then designer, then moderator conclude, and final committee respond and final designer respond.
4. **I rule, in my own words.**

Cross-talk happens only in round 2 and later, and only on the named
disagreement.

---

## Minutes format

One file per round: `docs/board/NN-<slug>.md`.

```markdown
# Round NN — <question>

Date: YYYY-MM-DD
Student persona: <who, and their situation>

## Question

## Positions
- designer:
- committee:
- student:

## The disagreement
<the one real conflict, named>

## Ruling (mine)
<my words, and why this beat the alternative>

## What I threw away
<the option I rejected, and what the course loses by it>

```

The **What I threw away** section is not optional. It is the part of the
evidence no commit can supply on its own.

---

## Standing drift guards

Every seat checks its own output against these before answering. A violation is
reported, not silently fixed.

1. **Examiner frame.** This course is about finding out whether someone
   understands, not about how to study. Any proposal phrased entirely in the
   learner's verbs is flagged.
2. **No study-skills vocabulary.** "tip", "hack", "productivity", "routine".
3. **Not research methods.** Claim/reason/warrant is an instrument for auditing
   explanations, never a writing curriculum.
4. **No week may be pure activity.** Every week carries something to read.
5. **Weeks must not be interchangeable.** If two weeks could swap places with no
   loss, one of them is not a week.
6. **The ladder is not sacred.** Any seat may attack it. A course that presents
   its own instrument uncritically is doing the thing it criticises.
7. **No invented requirements.** See Constitution 2.

---

## Artefacts and commits

- Minutes are committed as they are produced, one commit per round, dated.
- The pre-board design notes (`draft-context*.md`) are committed **before** the
  first round, so the board's starting point is on the record.
- Work done outside the ANU gateway leaves no trail there, so it is only
  evidence if it is in this repo. Commit it.
- `PROCESS.md` cites rounds by commit link. Uncited claims do not count.

---

## Honesty

- The seats are language models with mandates. They are not people and not a
  real committee. `PROCESS.md` says so plainly.
- The rulings are mine and I can defend them without the transcripts. A marker
  may ask me to justify a design decision on the spot.
- If the board produced something I cannot explain, it does not go on the site.

---

## Stop conditions

Close the board and start building when any of these is true:

- the three questions that change the site are ruled on — is the examiner frame
  the course, does the week arc hold, do the assessments align to the ladder;
- rounds start restating earlier rounds;
- **or it is Saturday.** The board is worth marks only if the site ships.

---

## Herdr operating notes

- One tab per seat, named as above; keep the chair's shell in its own pane.
- `idle` means ready for input; `done` is finished background work; `blocked`
  means it is waiting on an approval. `unknown` does not mean finished.
- Read state from the JSON the CLI returns rather than predicting it.
- Discover current syntax from the installed binary (`herdr agent`, `herdr tab`)
  — it is the authority, not this file.
