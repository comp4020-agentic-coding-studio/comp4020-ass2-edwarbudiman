# Readiness check (pre-board, not a round)

Date: 2026-09-19

Not a round. No question has been put through the moderator seat. Collected
via `herdr agent prompt`/`read` against designer (wK:p2), committee (wK:p3),
student (wK:p4), each responding from its own mandate. Compressed without
softening.

## designer

**Read PROJECT-BRIEF.md:** yes, in full, including §3.1, §4.1, §6.2, and every
status column.

**Ready:** "Ready. On all three. PROPOSED and OPEN are my ground... I don't
need any of those pinned before I speak; pinning them is what the rounds are
for." Stated preference, not a blocker: take OQ-1 first, "because CON-2 is the
decision the other two inherit."

**Blockers, in the order this seat says they'd bite:**
1. The clock. "Today is Sat 19 Sep 2026; the brief's §16 timeline was written
   on Thu 17... The board is standing on its own closing condition." States it
   will front-load both proposals per question rather than hold reserves for a
   round 3 that may not exist, unless told otherwise.
2. A cited conflict this seat will not resolve itself: its own seat brief
   (citing FIX-14) reads "if your proposal needs a fifth collection, it needs
   a different proposal"; README.md, on this seat's reading, says the opposite
   — that adding a collection of one's own is allowed via
   `src/content.config.ts` / `graphCollections`. Live for IA-4 (the ladder)
   and IA-5 (the worked example). "I won't assert either reading. I need the
   chair to say which one binds me."
3. ID-2 (level digit) treated as entangled with OQ-1, not separable: "the
   student answering me is a different person" if the level moves mid-question.
   Asks the chair to pin it before OQ-1 or rule explicitly that OQ-1 decides it.
4. Has not read the published spec directly — working from README.md and the
   brief's §2 restatement. Will not cite what it cannot link; asks to be
   pointed at spec text or cleared to fetch the course URL if a round turns on
   a spec line.

## committee

**Read PROJECT-BRIEF.md:** yes, all sixteen sections, plus README.md, the
rule file, and its own seat brief. States it holds "the ID vocabulary" for
every FIX/CON/LAD/CUR/ASM/ID/VOI/HAR/EVI series.

**Ready:** "OQ-1 and OQ-2 I can run at full strength today." OQ-3 partially:
can test A1 and the two A2 candidates; A3 (ASM-5) is "currently a working
title with one line... I cannot pass or fail it as an assessment — I'll
report it as 'not yet an assessment' rather than pretend to test it."

**Blockers/flags:**
- Spec provenance: what it has is the brief's §2 transcription, not the
  published spec directly. "If I run standing test 3 (Completeness) against
  FIX-2/3/4 as written there, I'm auditing against a secondhand copy." Asked
  the chair to name the citation of record or clear it to fetch the spec URL
  once. *(Answered directly by the chair mid-check — see Note below.)*
- OQ-2 dependency (CUR-4) is untestable as graph structure — no `related:`
  edges exist yet, only prose; will label which it tested.
- OQ-2 completeness untestable — ID-3/CUR-6 are OPEN, so FIX-13 (dates inside
  course period) cannot be checked against real dates.
- OQ-3 alignment has "nothing to read" — no assessment in §7 names the rungs
  it claims to measure (LAD-3/ASM-7 requirement); ASM-9 weights are open, so
  FIX-4 (100%) is unmet on paper today.
- One ambiguity flagged for resolution either way: is the "optional
  participation component" (§7) in scope for this check or not — changes the
  FIX-4 arithmetic and the fakeability test.
- One tension noted, held for OQ-2 not this check: LAD-3 requires every week
  to name its rungs; §6 gives weeks 1 and 12 a dash.
- ID-2 explicitly *not* a blocker for this seat: "I can rule on which level
  digit the demand matches."

## student

**Read PROJECT-BRIEF.md:** yes (467 lines) plus the rule file, on receiving
this prompt. Notes a discrepancy unprompted: "§16 says today is Thu 17 Sep
while the system clock says Sat 19 Sep... That's the chair's problem, not
mine, but it changes how much of three rounds per question is actually
available."

**Ready:** yes, at varying confidence per question. OQ-1 — "the seat I'm most
use for," wants ID-4's catalogue line drafted or a candidate, since its
mandate is a ninety-second read of that line and it's currently OPEN. OQ-2 —
ready, "my test for CUR-3 is boredom, not structure, so I don't need the week
pages written." OQ-3 — ready, and names where it expects to be hardest on the
brief: ASM-3 claims A2 is "unfakeable by a polished artefact," and this seat
is built to test exactly that claim.

**Blockers:**
- No persona yet, by design, not by delay: "§3 fixes the person against the
  question... I instantiate in the same message I answer in."
- ID-2 named as a live dependency on this seat too, independently of
  designer's framing: if the chair rules level 8 before OQ-1, this seat's
  persona shifts to someone who assesses others rather than someone deciding
  whether to enrol, and "the 'would I enrol' question gets thinner." Asked for
  an explicit choice — answer OQ-1 at 4 and re-run if 8 lands, or the reverse
  — "silence isn't" fine.
- Notes it will read committee's answer first (protocol order) and states
  plainly it is "forbidden from inheriting its reasons" — expects to
  contradict it.
- Restates Constitution 4 (one question per round) as a limit on itself.

## moderator (this seat's own readiness)

Read PROJECT-BRIEF.md in full for this check. Items I cannot yet map cleanly
to a single FIXED/DECIDED/PROPOSED/OPEN tag, flagged rather than resolved:

- **§7's own internal contradiction.** The assessment table (A1/A2/A3) sits
  above a block explicitly marked `*previous draft*` containing ASM-1–ASM-9
  with their own status column. It is unclear whether the `*previous draft*`
  block's per-item statuses (e.g. ASM-1 `DECIDED`, ASM-3 `OPEN`) still govern,
  or whether the table above supersedes them silently. I will use the
  `*previous draft*` block's per-ID statuses until told otherwise, since it is
  the only place a status is actually assigned to ASM-1…9.
- **The date discrepancy independently caught by `committee` and `student`.**
  §16 states "Today is Thu 17 Sep," §6 stop-condition language in the rules
  file and the system clock both say Saturday 19 Sep. I hold this the same way
  both seats did: not mine to resolve, but it bears on whether three rounds
  per question is actually available, which is the chair's call under
  Constitution 5.
- **ID-1/ID-2/ID-3/ID-4/ID-5/ID-6 are all `OPEN` in the brief**, but §13 lists
  only ID-1 (title), ID-2 (level), IA-9 (placement) as "secondary, resolvable
  without a full round." `designer` and `student` have both independently
  named ID-2 as entangled with OQ-1 rather than secondary to it. I flag the
  tension between the brief's own §13 characterisation and what two seats now
  say about it; I am not ruling on which is right.

**Process note, not a course opinion:** after this readiness check was sent,
two further prompts reached the seats without going through this seat —
`"§2 is the citation of record, go ahead"` to `committee`, and
`"OQ-1: is the examiner frame the course, and is it niche enough?"` to
`student`. Under the round protocol, the question is put by the chair to the
moderator, restated in `cycle-1.md`, and speaking order is committee → student
→ designer → moderator (conclude) → committee (final) → designer (final), with
cross-talk reserved for round 2+. Recording this as a fact of the record; it
is the chair's call whether to treat OQ-1 as formally opened or to restart it
through `cycle-1.md`.

## Status

All three seats report **ready**, each with named, seat-specific blockers
(above) rather than a flat "not ready." None declined to proceed. No
disagreement to name yet — this is a readiness check, not a round, and no
course question has been ruled on.
