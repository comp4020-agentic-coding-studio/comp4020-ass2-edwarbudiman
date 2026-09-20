# Week 4 handoff — Evidence changes with conditions

Authored in a parallel session under `guidelines.md`, from the W4 row of
`docs/material.md` and the user's brief for this week. Weeks 2 and 3 were being
written concurrently by other sessions; nothing outside the four files below was
created, edited, renamed or deleted.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-04.deck.mdx` | New. 55 slides. |
| `src/content/lectures/week-04.md` | New. Continuous notes, 12 sections. |
| `src/content/sessions/04-conditions.md` | New. 25-minute investigation. |
| `docs/lecture-handoffs/week-04.md` | This file. |

Frontmatter as specified: lecture `week: 4`, `date: 2027-03-15`,
`slides: /decks/week-04/`, `related: [sessions/04-conditions]`, no `teachers:`.
Session `week: 4`, `date: 2027-03-15`, four `spec:` lines, no `related:`. Deck
frontmatter is `title` and `description` only. The date sits inside the teaching
period in `src/course-config.ts` (2027-02-22 to 2027-05-28).

## The example, and why it is Week 3's lock again

The continuing example is a **pin tumbler lock**, the same mechanism Week 3
uses. This was a user decision and it is load-bearing: the week's claim is that
*one person on one concept* draws different judgements under different
conditions. If the object changed between conditions, every difference would
have an obvious rival explanation and the demonstration would collapse.

Because Week 3 is being written in parallel and Week 4 must stand alone, all
three Week 4 files re-supply a **short self-contained explanation of the
mechanism from scratch**, written from the verified anatomy in
`verified-sources-w2-w4.md`: casing, plug, keyway, cam, key pins, driver pins,
springs, shear line; locked / unlocked / wrong-key states; and the consequence
that one pin crossing the shear line anywhere is sufficient to stop the plug,
so there is no partly open. Readers who skipped Week 3 are told explicitly that
they lose nothing.

No lock-picking method appears anywhere, and none is implied. Rozenblit and
Keil's own diagnostic question for the cylinder lock asked participants how one
could pick it; the deck and lecture both say in so many words that our question
deliberately does not, and that this course gives no method for it.

## The three conditions and Rowan's responses

Rowan is fictional, labelled as such in all three files, and referred to with
they/them. The three responses are printed in full and verbatim-identical in
`src/decks/week-04.deck.mdx` (split across three slides each),
`src/content/lectures/week-04.md` §4, and
`src/content/sessions/04-conditions.md` §2.

- **(a) Reference visible** — "Explain how a pin tumbler lock works," with the
  reference text on the table. Rowan's answer is accurate, complete, correctly
  ordered, and uses every term properly — while tracking the reference's own
  order and vocabulary closely enough to be readable as organised copying.
- **(b) From memory, to a novice** — reference removed, listener has never
  wondered what is inside a key. Rowan's answer is fluent, well pitched, and
  contains one relation phrased independently of the source ("a pin sitting
  across a join is a bolt"). It also silently collapses the two-pin stack into a
  single pin lifted "flush with the join," which is not the mechanism and would
  not work; the over-lift failure mode consequently disappears from Rowan's
  account of a wrong key.
- **(c) Prediction about a changed case** — one cut on a working key filed a
  little too shallow, every other cut correct; what happens when it is turned,
  and why? Rowan opens by asking whether a guess is wanted, hedges throughout,
  and is shorter than in (a) or (b) — but produces the causal consequence that
  neither other condition demonstrates: one wrong stack is enough, because the
  plug is one object rather than five independent ones, so there is no half
  turn, and a near-miss key is externally indistinguishable from a wholly wrong
  one.

The shallow-cut variant was chosen over the longer-driver-pin variant (the
brief offered either) because it is derivable in full from the verified source
text. A longer driver pin does not move the key-pin/driver-pin junction, so
whether it blocks depends on chamber and spring clearances that the verified
material does not cover; answering it would have required unverified mechanical
speculation. **Recorded as a deliberate narrowing, not an oversight.**

### The designed ambiguity

A defensible case exists on both sides and both are written out as worked
responses, in the deck (two slides each), the lecture (two `<details>` blocks)
and the session. The pro case rests on (b)'s independent phrasing and (c)'s
un-memorisable prediction; the sceptical case rests on (a)'s proximity to the
source and (b)'s mechanical error. The week then makes the point that looking
harder at Rowan does not resolve it, because what divides the readings is which
condition each reader let count.

One extra piece of leverage is offered and honestly bounded: Rowan is vague
about the *same* thing in both (b) and (c), and a gap that survives a change of
condition is harder to blame on the condition. The text says plainly that this
is small — two observations, from two conditions that both lacked the reference,
so not independent.

### Condition (c)'s double edge

Handled explicitly across two slides and lecture §7: a prediction about a
modified mechanism is the only condition that cannot be satisfied by holding the
parts in the right order, *and* the condition most likely to fail for a reason
unrelated to the lock, because being asked to predict at all may be an
unfamiliar genre. A weak (c) is therefore ambiguous between "no causal model"
and "no experience of being asked," and the transcript cannot separate them.

### Consistency

Treated as a real result rather than a failure: a reader whose three judgements
agree has applied *something* stable, which does not establish that the
something was a good criterion or that they could state it. The commonest
version named — forming a view under one condition and reading the other two
through it — with a check ("write down what evidence would have changed your
verdict; if nothing would have, the consistency came from a commitment").

### Handoff to Week 5

The deck and lecture name the need for an **instrument** — a rule written down
before you look, inspectable and arguable — and stop there. Week 5's ladder is
mentioned by name and content (recognition through connection) as *what Week 5
builds*, and the reader is told in both the deck and the session not to draft
one yet, and to bring their one-line "I counted that as stronger evidence
because…" sentence as raw material. **No ladder, draft or otherwise, appears in
any Week 4 file.**

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Rozenblit & Keil (2002), *Cognitive Science* 26(5), 521–562, Study 1 | **Empirical finding** | Facts taken from `verified-sources-w2-w4.md`, which records a direct read of the full PDF. I re-fetched the URL and got HTTP 200; I did **not** re-read the paper myself. |
| Clark & Chalmers (1998), "The Extended Mind," *Analysis* 58(1), 7–19, §§1–3 | **Theoretical argument** | Carried from Week 1's verified use. See link caveat below. |
| Wikipedia, "Pin tumbler lock" | **Technical explanation only** | Anatomy taken from `verified-sources-w2-w4.md`'s direct read. URL re-fetched, HTTP 200. |
| Brown, Roediger & McDaniel (2014), *Make It Stick*, chapter 1 | Optional companion, **reading question only** | Listed in the lecture's reading section with a question, not attached to any claim. No chapter title or page number is asserted. `makeitstick.com` re-fetched, HTTP 200. |

What is claimed of Rozenblit & Keil, and the limits stated on the page: 16
graduate students at one university in Study 1; the ratings are **self-ratings**,
i.e. self-report and not independent evidence of what anyone could produce; the
study's own explanation-versus-diagnostic comparison was **not** statistically
significant, which the deck uses as a corrective ("conditions matter, but which
ones matter is an empirical question"); and extending the effect from a person
judging themselves to an outside examiner is flagged as **our adaptation, not
their claim**. No F-value, p-value or effect size is quoted on any page. The
cylinder lock is mentioned as one of the eight items, which the verified-sources
file confirms.

Nothing from the "candidate sources NOT yet verified" list was used. No
citation, page number, chapter title or study was invented.

## Verified by direct inspection vs not

**Directly verified by me:**

- Every fact about the lock traces to `verified-sources-w2-w4.md`; no anatomy
  was added from memory.
- `src/decks/week-04.deck.mdx` compiles under `@mdx-js/mdx` 3.1.1 (already in
  `node_modules`), checked with a one-line `compile()` call against the file;
  `week-01.deck.mdx` was compiled in the same run as a control. This is a
  **syntax parse only**, not the project build.
- HTTP status of four external links (see table). All 200 except Chalmers.
- Frontmatter against `src/content.config.ts` and
  `astro-course-university/schemas.ts` by reading both; `slides` matches the
  `^/decks/[a-z0-9-]+/$` regex; the date is inside the `src/course-config.ts`
  teaching period.
- Every internal link in the three files points to `week-04` or
  `04-conditions`. No link or `related:` edge to Week 3 or Week 5 anywhere.
- Slide density measured against the Week 1 benchmark: Week 1 is 24 slides,
  mean 64 words, max 78. Week 4 is 55 slides, mean 68, max 99 (the one 99 is the
  two-column `evidence-pair` slide, ~50 words per column). The first draft
  averaged 93 words and was rewritten for this reason.

**Not verified:**

- **No build, dev server, type check, visual check or link check was run**, as
  instructed. Nothing here establishes that any slide fits or stays legible at
  1920×1080 or 390×844.
- `https://www.consc.net/papers/extended.html` **timed out** from this machine
  (curl exit 28, twice, with and without a browser user-agent). The URL is the
  one `verified-sources-w2-w4.md` records and Week 1 already ships, so it is
  carried over rather than re-verified. Integration should confirm it resolves
  before shipping; if it does not, the citation still stands on the bibliographic
  record and only the link needs replacing.
- I did not read Rozenblit & Keil, Clark & Chalmers, or *Make It Stick* myself.
  Everything attributed to them comes from the integration session's verified
  file or, for *Make It Stick*, is a reading question carrying no claim.

## Intended edges not yet created

The build fails on an unresolved ref, so these were left out. Week 3's files
have since appeared on disk, but adding an edge into another session's
in-flight week is still not mine to do, and Week 5 does not exist at all. For
the integration session to add:

- `src/content/lectures/week-04.md` → `lectures/week-03` (Week 4 reuses Week 3's
  lock and the reader is told so in prose).
- `src/content/sessions/04-conditions.md` → `sessions/03-reconstruction` (slug
  confirmed by reading the file, which now exists).
- `src/content/lectures/week-04.md` → `lectures/week-05` (Week 4 names the need
  for the instrument Week 5 builds).
- The reverse edge from Week 5 back to `sessions/04-conditions` is probably the
  more useful one, since the reader is asked to carry their one-line rule
  forward.

No prose link to a Week 3 or Week 5 URL was written either, for the same reason.

## Risks and outstanding decisions

1. **The lock reference text differs in wording from Week 3's — checked, and
   it is compatible.** Week 3's files landed on disk while I was working, so I
   read `src/content/lectures/week-03.md` before finishing. Both references
   derive from the same verified anatomy and **agree on every substantive
   point**: casing, plug, keyway, cam, key pins in the plug, driver pins above
   them in the casing, springs pressing down, stack, shear line, the no-key /
   correct-key / wrong-key states, both wrong-key failure modes, and that one
   wrong stack is enough. The phrasing differs throughout and Week 3 divides the
   explanation differently (it drills holes through the plug; I describe stacks
   sitting across the boundary). No contradiction was found, so **no correction
   is required** — but the two texts are still two texts. If integration
   reconciles them into one, note that Rowan's condition (a) response is
   deliberately close to *this week's* reference wording, because the sceptical
   "well-organised copying" reading depends on that proximity. **Re-tune (a) to
   whatever the reconciled text says**, or that reading loses its grounding.
2. **Naming: Week 3 records that the Wikipedia article calls the boundary the
   "shear point" and that Week 3 uses "shear line" instead.** Week 4 uses "shear
   line" throughout, which matches both Week 3 and `verified-sources-w2-w4.md`.
   Consistent across the three weeks as they stand; flagged so nobody
   "corrects" one week in isolation.
3. **Week 3's fictional person is Priya; Week 4's is Rowan.** Week 4 refers to
   Week 3's activity shape in prose only (study, close, reconstruct, reopen and
   annotate) and never quotes Week 3's wording or names Priya. I checked the
   recap sentence against Week 3's actual lesson and it holds. Week 3's session
   slug is `03-reconstruction`, needed for the pending edge below.
4. **Slide count.** 55 slides against Week 1's 24. This is deliberate — Week 4
   carries three full transcripts plus a self-contained lock explanation — and
   density per slide matches the Week 1 benchmark. If the integration session
   would rather have a shorter deck, the compressible material is the
   three-slide splits of each response; it is not the worked responses.
5. **`evidence-pair` is used once**, for locked versus unlocked, which is a
   genuine two-item comparison. Not used anywhere the brief's warning applies.
6. **Two `impact` slides beyond the title**: "The disagreement is not about
   Rowan" and "What is needed is an instrument". Both are transitions rather
   than decoration (Week 1 uses one in 24 slides; this is two in 55), but a
   reviewer who reads `impact` more strictly should cut the first. Two
   `investigation` slides, one per activity.
7. **No shared-file change is proposed.** `theme.css` was sufficient as it
   stands; `impact`, `investigation`, `evidence-pair`, `source-note` and
   `reading-entry` are all used as defined and none was modified.

## Evidence level

**Drafted and editorially checked.** I read the deck start to finish as a
student with no lecturer and no prior knowledge of locks or of this course, and
fixed nine things that did not stand up. The substantive ones, for the record:

- The sceptical reading originally asserted that Rowan's one-pin model "cannot
  fail by over-lifting" without saying why. It now explains it: with a single
  pin per position, lifting it too far carries it clear of the join and the lock
  opens, so that failure mode has nowhere to come from — which is exactly why it
  is absent from Rowan's account of a wrong key. Propagated to all three files.
- Nothing told the reader whether Rowan's condition (c) answer was actually
  *correct*, which an examiner needs in order to judge it. All three files now
  say plainly that, measured against the supplied mechanism, it is. This
  sharpens rather than resolves the ambiguity: correct content, hesitant
  delivery.
- Rozenblit and Keil were introduced by surname with no indication of what they
  did or when; "one of the eight items" referred to a set the reader had never
  been shown. Both fixed.
- Two slides counted lock slides or referred to "the four lock slides" in ways
  that went stale when the deck was re-paginated.
- The fictional-example label was missing from "How to use this lesson" (it
  appeared only on the final slide). Week 1 carries it in both places.

One further hole was found late, by reading Week 3's reference and then
re-reading my own: the pro-Rowan case rested on (c) "not having been
memorisable," but my own reference text (like Week 3's) already states that one
crossing anywhere is enough — so (c)'s *conclusion* was available in print. All
three files now carry a sharper version of the objection, which separates the
conclusion (available) from Rowan's reason for it, the one-piece-plug inference
and the closing question (not available anywhere). This is a real improvement to
the week's ambiguity rather than a patch: it gives the sceptic a live attack on
the other side's strongest plank.

The MDX parses, the frontmatter matches the schemas, the internal links resolve,
the dates are in period, and the sources carry only the weight the verified file
allows.

**Not visually reviewed.** No build was run and no page was opened in a browser,
at either marking viewport or any other. Text fit, legibility, overflow and
navigation on 55 slides remain entirely unchecked.
