# Week 10 handoff — Knowledge with a collaborator

Authored as one of four parallel forked sessions (weeks 9–12), from the W10 row
of `docs/material.md` and `guidelines.md`. Weeks 9, 11 and 12 were being
written concurrently by sibling forks; nothing outside the four files below
was created, edited, renamed or deleted. `src/content/lectures/week-09.md`
existed on disk by the time I checked (a sibling fork finished before me), so
a `related:` edge into it was added; `week-11.md` also existed but this
week's lecture has no natural forward reference to add (the hand-off to W11 is
in prose only, matching how Week 8 → Week 9 and other weeks have handled a
forward reference that isn't itself a citation-worthy link).

The user confirmed mid-session that the course should read as `SLOP4152`,
level 4 — an advanced elective, not an intro study-skills unit — so this week
is pitched at that register throughout: no simplified definitions of AI use,
and the attribution problem is presented as genuinely unresolved rather than
softened into a "be careful with AI" caution.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-10.deck.mdx` | New. 23 slides. |
| `src/content/lectures/week-10.md` | New. Continuous notes, 13 numbered sections plus reading and closing sections. |
| `src/content/sessions/10-with-a-collaborator.md` | New. ~30-minute solo investigation with an AI route, a human-partner route, and a solo-with-AI route, all built into the main flow rather than offered as an afterthought. |
| `docs/lecture-handoffs/week-10.md` | This file. |

Frontmatter: lecture `week: 10`, `date: 2027-04-26`, `slides: /decks/week-10/`,
`related: [sessions/10-with-a-collaborator, lectures/week-02, lectures/week-09]`,
no `teachers:`. Session `week: 10`, `date: 2027-04-26`, four `spec:` lines,
`related: [lectures/week-10, sessions/02-first-review]`. Deck frontmatter is
`title` and `description` only, matching Week 1's shape. The date continues the
established weekly cadence (W1 2027-02-22 → one week apart through W9
2027-04-19), confirmed by reading `week-09.md`'s frontmatter directly rather
than assuming the pattern held, and sits inside `src/course-config.ts`'s
teaching period (2027-02-22–2027-05-28).

## The concept, the example, and why

The W10 row's content is: AI as collaborator rather than cheating object;
attribution of performance; tool use; legitimate support; person vs
person-plus-environment; assisted expertise. Its anchor activity, stated
directly in `docs/material.md`, is to **repeat the Week 2 knowledge-swap
exercise**, but this time the learner may actively use AI during questioning
or problem solving.

**I reused Week 2's Nadia and Theo deliberately, not as a collision.** The
material.md row calls for a *repeat* of that specific exercise, and Week 1's
lecture notes already planted the exact line this week resolves: "Later weeks
will examine the difficulties of separating a person's contribution from a
collaborator's, including AI." Reusing the same pair lets the lesson open by
naming precisely what changed (the source stays open, instead of being closed
before the performance) rather than re-establishing an unrelated scenario from
nothing. I read both `week-02.md` and `02-first-review.md` in full before
writing, and the new topic (why a honeybee colony regulates its temperature)
is new — it does not reuse the zip, and I checked it does not collide with any
example named in Weeks 1, 3–8, or 9 (gardener/plants, per the W9 lecture's
description) or with cycling (Week 6).

**The core move:** Theo repeats his ten-minute-research-then-explain
structure, but an AI chat window stays open through his explanation and
through Nadia's probing, not only beforehand. When Nadia asks her exception
case, Theo relays the assistant's answer rather than producing it himself.
The lesson's worked point, built across three stages, is that (1) some of
Theo's contribution survives and is identifiable — recognising the question
was worth escalating, judging the answer relevant, connecting a later
question to something from his own reading — but (2) even a complete,
honestly-labelled transcript cannot establish whether he could have produced
the collaborator's sentences himself, which is the actual "failure that must
be produced" named in `docs/material.md`: the clean boundary between the
person's knowledge and the collaborator's contribution is difficult to defend
even with careful record-keeping, not just in principle but in the specific
worked case.

### Why I introduced a named theoretical frame instead of only Clark & Chalmers

Week 1 already uses Clark and Chalmers' "The Extended Mind" to argue a closed,
consulted source can belong inside cognition. Reusing it here without new work
would have just repeated Week 1's point one week later. Instead I used it only
as a "revisit, and ask whether it stretches" prompt in the reading section, and
introduced a second, different source — Klein, Woods, Bradshaw, Hoffman and
Feltovich's account of the "Basic Compact" in human–automation teaming — to
explain *why* a live collaborator is structurally different from a closed
source: their point that the compact "has to be continuously reinforced or
renewed" gives a non-hand-wavy reason a live AI resists the same clean
attribution a closed source permits. This is offered explicitly as a
**theoretical argument**, not an empirical finding, and I said so on the slide
and in the notes, per `guidelines.md` §3's instruction to state what kind of
support a source provides.

### The activity design

The material.md anchor is "repeat knowledge-swap exercise, but learner may
actively use AI during questioning/problem solving." I built the session
around a genuine repeat of that structure rather than a new activity shape:
three self-written diagnostic questions (echoing Nadia's probes), an
explanation with a collaborator open throughout, then the questions put to
the reader themselves, followed by a three-way attribution record (answered
alone / relayed / mixed) for each. The session offers three explicit routes —
AI assistant, human partner standing in as collaborator, and solo with AI and
no examiner — because `guidelines.md` requires a no-AI-account route and a
solo route with its loss stated; I used the human-partner route to satisfy the
no-AI-account requirement rather than removing the "live collaborator"
condition itself, since that condition is the entire content of the week.

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Klein, Woods, Bradshaw, Hoffman & Feltovich (2004), "Ten Challenges for Making Automation a 'Team Player' in Joint Human-Agent Activity," *IEEE Intelligent Systems* 19(6), 91–95 | **Theoretical argument** about human–agent coordination | I searched for the paper, found its direct-PDF link 404'd, and instead fetched a page (Fermat's Library's annotated edition) that quotes the primary text directly. I used only the exact quoted sentences it returned — "an agreement (often tacit) to facilitate coordination, work toward shared goals, and prevent breakdowns in team coordination" and "not a once-and-for-all prerequisite to be satisfied but rather has to be continuously reinforced or renewed" — and did not add any claim, statistic, or page number the fetch did not supply. This is weaker verification than reading the original PDF directly, and I've flagged it below rather than presenting it as equivalent. |
| Clark & Chalmers (1998), "The Extended Mind" | **Primary philosophical argument**, already verified and used in Week 1 | Not re-verified this session; used only as a named "revisit and ask whether it stretches" prompt, not as the source of any new claim, so I relied on Week 1's existing citation rather than re-fetching it. |

Nothing from Week 2's Rozenblit & Keil citation was reused here, since this
week's failure is about attribution during collaboration, not about the
illusion of explanatory depth — reusing it would have forced a strained fit.

## Verified by direct inspection vs not

**Directly verified by me:**

- `src/content/lectures/week-02.md` and `src/content/sessions/02-first-review.md`, read in full, before writing the repeat.
- `src/content/lectures/week-09.md`'s frontmatter, to confirm the date cadence and that the file existed before adding the `related:` edge.
- The Klein et al. quotes, via a direct fetch of a page quoting the primary text (see sources table above) — not recalled from training data.
- Frontmatter fields against `src/content.config.ts`: `week` is `2` ≤ 10 ≤ `12`, `date` is a valid ISO date inside the course period, `slides` matches `^/decks/[a-z0-9-]+/$`.
- The deck has 23 content slides (24 `---` separators total, minus the frontmatter's own pair, plus one) and no `<details>` tags to balance; the session file's single `<details>`/`</details>` pair is balanced.
- Internal links point only to `week-10` / `10-with-a-collaborator`, or by name in prose to Week 1's Sam example and Week 2's Nadia/Theo pair (continuing characters, not a new cross-link).

**Not verified:**

- **No build, dev server, type check, MDX compile, visual check or link check was run**, per instruction. Nothing here establishes the deck fits or stays legible at 1920×1080 or 390×844.
- I did not fetch the Klein et al. paper's original PDF directly; I relied on a secondary page's direct quotations of it, flagged above. If that intermediary quoted inaccurately, this lecture inherits the error.
- Whether weeks 11 or 12 chose a character name, example, or slug colliding with this week's — I could not check `week-11.md`'s or `week-12.md`'s content, only that `week-11.md` existed on disk (its content was not read).

## Intended edges not yet created

- `week-10` → `week-11`: the lecture's closing section names Week 11 by topic in prose only, since I did not read `week-11.md`'s content and didn't want to assume its exact title or slug wording.
- The reverse edge, `week-09` → `week-10`, if the Week 9 author wants to name what it hands forward with a working link (mirrors how earlier weeks have handled forward references).

## Risks and outstanding decisions

1. **Reused characters, by design.** Nadia and Theo are Week 2's characters, reused deliberately because this week is an explicit repeat of that exercise. Flagging this clearly so integration does not mistake it for an accidental collision with another week's new characters.
2. **The Klein et al. citation's verification is one step removed from the primary PDF** (see sources table) — worth a follow-up direct read if this lecture heads toward publication, per `guidelines.md` §3's preference for inspecting the passage directly rather than relying on an intermediary.
3. **Slide count.** 23 slides, on the shorter end of the 24–55 range this course has used so far. This week has one continuing worked exchange (the bee explanation, one probe, one harder follow-up) rather than several conditions, so the length matches the material rather than being under-filled — but it's a judgement call, flagged for review, same caveat Week 8's handoff raised for a similarly short deck.
4. **No shared-file change proposed.** `theme.css` was sufficient as-is (`impact`, `investigation`, `evidence-pair`, `source-note` all reused, no new class added).

## Evidence level

**Drafted and editorially checked.** I read the deck and lecture notes start to
finish as a student with no lecturer, and confirmed: the Klein et al. quotes
match exactly what the fetch returned, with no wording altered; the
attribution-record activity in the session file produces the same kind of
three-field record the lecture's worked examples model; the fictional-label
sentence appears in both the deck's early framing and its closing slide,
matching the pattern earlier weeks use; and the forward reference to Week 11
makes no claim about that week's content beyond what `docs/material.md`'s own
row states.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at either marking viewport or any other. Text fit, legibility,
overflow and navigation on 23 slides, and the two-column `evidence-pair`
layout in particular, remain entirely unchecked, per current instruction that
the user performs build and visual checks.
