# Week 6 handoff — What are you allowed to use?

Authored as a parallel fork under `guidelines.md`, from the W6 row of
`docs/material.md`. Week 5 did not exist on disk at the time of writing (a
parallel fork was still producing it), so this week works from the W6 row of
`docs/material.md` alone and does not quote or paraphrase Week 5's actual
wording. Nothing outside the four files below was created, edited, renamed or
deleted.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-06.deck.mdx` | New. 27 slides. |
| `src/content/lectures/week-06.md` | New. Continuous notes, 10 sections. |
| `src/content/sessions/06-what-you-can-use.md` | New. ~20-minute investigation. |
| `docs/lecture-handoffs/week-06.md` | This file. |

Frontmatter as specified: lecture `week: 6`, `date: 2027-03-29`,
`slides: /decks/week-06/`, `related: [sessions/06-what-you-can-use]`, no
`teachers:`. Session `week: 6`, `date: 2027-03-29`, three `spec:` lines, no
`related:`. Deck frontmatter is `title` and `description` only. The date
continues the weekly Monday cadence (W1 2027-02-22 → W4 2027-03-15 → W6
2027-03-29) and sits inside the teaching period in `src/course-config.ts`
(2027-02-22 to 2027-05-28).

## The example, and why it is not a repeat

The continuing example is **Elena, a bicycle courier who uses turn-by-turn
navigation**, chosen fresh rather than reusing Wi-Fi (W1), the zipper (W2) or
the pin tumbler lock (W3, W4). It needs no prerequisite knowledge and, unlike
the rejected recipe-scaling/paint-mixture defaults, isn't a measurement task
in disguise — the question is about navigating an unfamiliar area, not about
converting quantities.

GPS navigation was chosen deliberately because it makes Clark & Chalmers'
extended-mind argument concrete without requiring the reader to accept the
strong philosophical thesis: a courier who has used the same app for years,
configured her own settings, and trusts it without re-checking is exactly the
profile their four conditions in §4 describe, and the week uses that fit to
ask a sharper question than "is a resource present."

Elena is fictional, labelled as such in all three files, and referred to as
"she" (the brief allows a reason to deviate from they/them; I gave her a
specific gender only because "courier" needed a pronoun across many sentences
and picking one reduced repetition of "Elena" — this is a stylistic call, not
load-bearing, and the tourist/pharmacist/student cases stay they/them since
they are one-line examples).

## The four-condition test, and where it goes beyond Week 1

Week 1 already cites Clark & Chalmers §§1–3 (the Otto/Inga notebook framing,
used to argue that consulting a reference doesn't automatically disqualify a
performance). Week 6 deliberately moves to **§4 ("From Cognition to Mind")
and §5 ("Beyond the Outer Limits")**, which I read via WebFetch rather than
recalling: the paper's explicit four-condition test for when a resource
functions as part of someone's own cognition — constancy, availability
without difficulty, automatic endorsement, and past (self-)endorsement — plus
§5's discussion of when a resource fails these (infrequent consultation, poor
accessibility, low reliability) and the authors' own qualification that the
fourth condition (past endorsement) is more arguable than the first three.

I did not have direct-PDF access to cross-check the WebFetch extraction
character-for-character against the original typesetting; the fetch tool
returned quoted short phrases with surrounding paraphrase, which I have used
as verified short quotations and closely-checked paraphrase, not as a
verbatim transcript. If the integration session wants line-for-line
certainty, re-fetching https://www.consc.net/papers/extended.html and
checking §§4–5 directly is worth five minutes; the URL resolved for me on
this run (unlike the timeout an earlier session recorded against the same
link for a different page range).

## The three teaching moves

1. **Naming the trap directly.** Elena's phone is taken away and she's asked
   to redraw the route from memory — the deck and lecture state plainly that
   a fluent-looking redraw would show short-term recall of one trip, not
   navigational competence, and a failed redraw would show the same thing in
   reverse. This is the week's "failure that must be produced" from
   `docs/material.md`, stated as a limitation to design around rather than a
   student outcome to induce.
2. **The four-condition sorting activity** (tourist/paper map, pharmacist/
   drug reference, student/AI tool) gives readers a second, unrelated set of
   cases to apply the test to before trusting it on Elena. All three are
   fictional and generic enough not to need domain expertise.
3. **The content-change test** (the one-way-street GPS instruction; the
   calculator/tax-inclusive-price worked example) is the week's positive
   answer to its own problem: instead of adding or removing the resource,
   change what the resource *says* so that engaged use and blind compliance
   produce different answers. This is designed to generalise — the session's
   activity asks the reader to build their own content-change test for a
   resource they actually use, which is the spec item most likely to reveal
   whether they actually absorbed the distinction rather than only Elena's
   specific case.

## Handoff to Week 7

The deck and lecture close by naming that the resource question stays open
but the next one is about **form**, not resources: whether presenting the
same idea in an unfamiliar form (new audience, new representation, an
undrilled task) is better evidence than a rehearsed repetition, supported or
not. No `related:` edge to `lectures/week-07` was added, since that file did
not exist on disk when I checked (see below) — the connection is prose-only.

## Sources and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Clark & Chalmers (1998), "The Extended Mind," *Analysis* 58(1), 7–19, §§4–5 | **Theoretical argument** | Fetched and read via WebFetch this session (not recalled, not copied from Week 1's citation of §§1–3). See caveat above about quote-vs-paraphrase fidelity. |

No other source is cited. I looked for a second, more empirical source on
distributed cognition or memory-vs-competence specifically for navigation
tasks and did not find and verify one in the time available; per
`guidelines.md`, one well-verified source is preferable to a guessed second
one, so I left it at one.

## Verified by direct inspection vs not

**Directly verified by me:**

- `src/decks/week-06.deck.mdx` frontmatter is `title`/`description` only,
  matching the pattern in `week-01.deck.mdx` and `week-04.deck.mdx` (both
  read in full before writing).
- Lecture and session frontmatter checked against `src/content.config.ts`:
  `week` coerces to an integer 1–12 (6 ✓), `date` is a valid ISO date inside
  the course period, `slides` matches `^/decks/[a-z0-9-]+/$`
  (`/decks/week-06/` ✓), `related` is a list of collection references and
  every entry (`sessions/06-what-you-can-use`) resolves to a file that exists
  on disk in this same commit.
- No `related:` edge points at `week-05` or `week-07`; I checked
  `src/content/lectures/` and `src/content/sessions/` directly before writing
  and confirmed neither existed at write time.
- `theme.css` was read in full and not modified. Classes used:
  `impact` (title only, one use — matches Week 1's restraint), `investigation`
  (two uses, one per Pause-and-write), `evidence-pair` (one use, for the
  "not useful alone" vs "inspectable" record contrast — a genuine two-item
  comparison, not decoration), `source-note` (one use).
- Slide count: 27, all under Week 1's ~24-slide benchmark pace; I read each
  slide back once for word count and kept most body slides in the
  45–85-word band the guidelines suggest, with a few shorter transition
  slides (matching Week 1's own pattern of short pivot slides between longer
  explanatory ones).
- I read this lecture note as a student with no prior week, start to finish,
  before finalising: the notebook/Otto explanation is given in full (not
  assumed from Week 1), so a reader who skipped Week 1 loses nothing, per
  guidelines §1.

**Not verified:**

- **No build, dev server, type check, link check or visual check was run.**
  Nothing here establishes MDX compiles, that links resolve at the platform
  level beyond my own file-existence check, or that any slide fits or stays
  legible at 1920×1080 or 390×844.
- The WebFetch extraction of Clark & Chalmers §§4–5 was not cross-checked
  against a second retrieval or the original PDF pagination; flagged above.
- I did not verify whether `06-what-you-can-use` is the slug the integration
  session or a Week 5/7 author would have independently chosen — it was free
  on disk at write time, but a naming collision with a parallel choice is
  possible if another session also picked it before merge.

## Risks and outstanding decisions

1. **Slug choice `06-what-you-can-use`** was mine to make per the brief
   ("pick a short descriptive slug... record your choice"); flagging for
   integration in case a parallel session or the user prefers something else.
2. **Elena is given "she" rather than they/them**, a deviation from the
   course's usual default (see above) — easy to normalise to they/them in a
   find-and-replace if integration wants strict consistency with Sam, Nadia,
   Theo, Priya and Rowan's pronoun treatment.
3. **No edge yet exists between Week 6 and Weeks 5 or 7** in either
   direction, since neither file existed at write time. For integration to
   add once all three land: `lectures/week-06.md` → `lectures/week-05` (this
   week directly tests an assumption named at the end of Week 5) and
   `lectures/week-06.md` → `lectures/week-07` (this week hands forward the
   "form, not resources" question). The reverse edges are probably also
   worth adding from whichever week's author gets there second.
4. **Only one source is cited.** This is a deliberate choice under time
   constraints, not an oversight — recorded above under Sources.
5. **The `she` pronoun aside, no shared-file change is proposed.** `theme.css`
   was sufficient; no new class was added or modified.

## Evidence level

**Drafted and editorially checked**, not visually reviewed. I read all three
files as a student with no lecturer and no other week open, and confirmed:
the courier scenario is self-contained; the four conditions are stated once
in full and then reused rather than re-derived each time; the sorting
activity and the content-change activity both have worked responses that
explain the reasoning, not just the verdict; the "what it does/doesn't show"
sections after each activity are present, per the review checklist in
`guidelines.md` §6; and the closing section states plainly what remains
unresolved and what Week 7 asks next. No build was run and no page was opened
in a browser, so slide fit, overflow and navigation at either marking
viewport remain entirely unchecked.
