# Week 8 handoff — What if you didn't know the test?

Authored as one of four parallel forked sessions (weeks 5–8), from the W8 row
of `docs/material.md` and `guidelines.md`. Weeks 5–7 were being written
concurrently by sibling forks; nothing outside the four files below was
created, edited, renamed or deleted. `src/content/lectures/week-07.md` did not
exist on disk at any point I checked, so no `related:` edge into Week 7 was
added anywhere.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-08.deck.mdx` | New. 27 slides. |
| `src/content/lectures/week-08.md` | New. Continuous notes, 11 numbered sections plus reading and closing sections. |
| `src/content/sessions/08-unannounced-question.md` | New. ~20-minute solo investigation, with an optional partner variant. |
| `docs/lecture-handoffs/week-08.md` | This file. |

Frontmatter: lecture `week: 8`, `date: 2027-04-12`, `slides: /decks/week-08/`,
`related: [sessions/08-unannounced-question]`, no `teachers:`. Session
`week: 8`, `date: 2027-04-12`, four `spec:` lines, no `related:`. Deck
frontmatter is `title` and `description` only, matching Week 1's shape. The
date sits inside the teaching period in `src/course-config.ts`
(2027-02-22–2027-05-28) and continues the established weekly cadence
(W1 2027-02-22 → W4 2027-03-15, one week apart); I did not independently
verify W5–W7's dates since their files were not yet written when I checked.

## The concept, the example, and why

The W8 row's content is: notice; rehearsed vs unannounced performance;
follow-up probes; adversarial/diagnostic questioning; why surprise can reveal
model structure. I built this around one new concept — **notice**, whether a
person knows in advance what they will be asked — introduced explicitly
because Weeks 6 and 7 each quietly assumed full notice while varying a
different thing (resources, then form).

**The example is new and does not reuse Wi-Fi, the zipper, or the lock.**
Elin (fictional, they/them, distinct from Sam, Nadia, Theo, Priya and Rowan)
is a home baker who has written and rehearsed an explanation of why bread
dough rises (yeast ferments sugar into CO₂; kneading develops gluten, which
traps the gas). This is presented as a **prepared** performance — accurate,
fluent, and exactly the kind of thing earlier weeks might have accepted as
good evidence. The lesson's move is an **unannounced follow-up** on the same
topic: "what would happen if you left the salt out?" Elin has not prepared for
this and visibly reasons live, correctly connecting salt's fermentation-slowing
role to dough structure — a connection the original explanation never needed.

The worked point is not "surprise reveals the truth." It is that the
follow-up rules out pure recitation (there was nothing to recite) but the
resulting answer is still a single performance produced at the moment of being
asked, so we still cannot tell whether Elin's reasoning existed beforehand or
was assembled live. That is the W8 "failure that must be produced" from
`docs/material.md`, stated as precisely as I could: surprise narrows but does
not close the gap between an observed performance and the state that preceded
it. This hands forward cleanly to W9 ("The prior state"): if performances
can't settle what preceded them, record the prior state directly, before any
intervention.

### Why I grounded Elin's answer in a real technical claim, not an invented one

Before writing Elin's follow-up answer, I fetched and read King Arthur
Baking's "The comprehensive guide to baking with yeast"
(<https://www.kingarthurbaking.com/blog/2023/05/10/guide-to-baking-with-yeast>,
re-verified HTTP 200 with a browser user agent) specifically to check whether
salt actually slows yeast fermentation, rather than assuming it for the sake
of a tidy example. It does: the guide states plainly, "We add salt to yeast
dough both for flavor, and to moderate yeast's work; we don't want our loaves
rising too fast," and separately that salt is osmotic and "can pull moisture
out of yeast cells, thus adversely affecting how the yeast functions." The
same page also verifies the base mechanism ("The byproducts of feeding yeast
are carbon dioxide, alcohol, and organic acids") used in the background slide
and Elin's original prepared explanation. This is one source doing real work
for two separate claims, rather than two thin ones; I dropped an initially
planned second link (a "Bread Baking 101" URL, which 404'd, and a BBC Good
Food gluten page, which worked but added nothing this page didn't already
cover) once this one source covered both claims accurately.

### The activity design

`docs/material.md`'s anchor is "prepared question followed by an unforeseen
'why / what if / what would change your answer?'" I made this genuinely
solo-completable without weakening it: the reader writes their own prepared
explanation of a **self-chosen** topic in step 1, then turns the page to a
**generic follow-up template** ("name a condition your explanation depends on,
ask what happens if it doesn't hold") they could not have seen before writing
step 1. The surprise is real because the specific instantiation of the
follow-up is only visible after the commitment is made, even though the
template itself is announced as existing. A partner variant is offered as an
optional step 4 in the session file, with its limit stated explicitly (a
partner still can't see what preceded the answer either — same limitation,
different observer).

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Rozenblit & Keil (2002), *Cognitive Science* 26(5), 521–562, Study 1 | **Empirical finding** | Facts taken from `docs/lecture-handoffs/verified-sources-w2-w4.md`, which records a direct read of the full PDF. I re-fetched the PDF URL myself and got HTTP 200; I did not re-read the full paper myself, since the verified-sources file's Study 1 detail (T1–T5 procedure, F/p/η² values, the T4 "still judged accurate" finding) was specific enough to ground every claim I made from it. |
| King Arthur Baking Company, "The comprehensive guide to baking with yeast" | **Technical explanation only**, per `guidelines.md` §3 — grounds the worked example, not a claim about understanding, learning or cognition | Fetched and read directly by me this session (see above); HTTP 200 re-verified with a browser user agent (a plain `curl` without one returned 406, which is bot-blocking, not a broken link). |

No new claim was made about Rozenblit & Keil beyond what `verified-sources-w2-w4.md` already records; I reused it with a different reading question (why the diagnostic-question drop is informative rather than unfair) than Weeks 2 and 4, per the earlier handoffs' note that it should not just repeat their treatment. Nothing from the "candidate sources NOT yet verified" list in the verified-sources file was used, and no citation, statistic or page reference was invented — every number quoted (F(4,56)=16.195, p<.001, the p<.002 contrast) is copied from the already-verified file, not re-derived.

## Verified by direct inspection vs not

**Directly verified by me:**

- The King Arthur Baking source, fetched and read this session (see above), not recalled or guessed.
- HTTP status of the two external links actually used in the final files (Rozenblit & Keil PDF, King Arthur guide) — both 200 with a browser user agent.
- `src/content/lectures/week-07.md` does not exist on disk (checked before writing any `related:` edges), so none was added.
- Frontmatter fields against `src/content.config.ts`: `week` is `2` ≤ 8 ≤ `12`, `date` is a valid ISO date inside the course period, `slides` matches `^/decks/[a-z0-9-]+/$`.
- `<details>` and `<p className="source-note">` tags in the deck file are balanced (counted programmatically), and the deck has 26 `---` slide separators (27 slides).
- Internal links in all three files point only to `week-08` / `08-unannounced-question`, or to Week 1's already-published Sam example by name in prose (not a link) — no link or `related:` edge to any week other than 8.

**Not verified:**

- **No build, dev server, type check, MDX compile, visual check or link check was run**, per instruction. Nothing here establishes the deck fits or stays legible at 1920×1080 or 390×844.
- I did not re-read the full Rozenblit & Keil PDF myself this session; I relied on the integration session's `verified-sources-w2-w4.md`, which records a direct read. If that file is ever found to contain an error, every quoted statistic here inherits it.
- Whether weeks 5, 6 or 7 chose an example, character name, or slug that collides with this week's choices (Elin; bread dough; `08-unannounced-question`) — none of those files existed on disk when I checked, so I could not verify against them. Worth an integration-session check once all four land.

## Intended edges not yet created

- `src/content/lectures/week-08.md` → `lectures/week-07` (Week 8 opens by naming Week 7's ending in prose — "Week 7 asked whether changing the form..." — but the file did not exist to link to).
- The reverse edge, `week-07` → `week-08`'s session or lecture, if Week 7's author wants to name what it hands forward with a working link rather than just prose (mirrors how Week 4 handled its forward reference to Week 5).
- `week-08` → `week-09` cannot be added; Week 9 does not exist yet. The lecture's closing section names it by title and topic in prose only.

## Risks and outstanding decisions

1. **Character and example collision risk.** Written without sight of weeks 5–7's choices. If another week also lands on a food-preparation example or reuses "Elin," that should be caught and fixed at integration — I have no way to check it from here.
2. **Slide count.** 27 slides, closer to Week 1's 24 than Week 4's 55. This week has one transcript exchange (prepared explanation, one follow-up, one answer) rather than three full conditions, so the shorter length matches the amount of worked material rather than being under-filled — but it's a judgement call, flagged for review.
3. **The generic follow-up template ("name a condition, ask what happens if it doesn't hold")** is deliberately abstract so it can be self-applied to any topic the reader picks. This is a designed feature, not a hedge, but it does mean the solo activity's follow-up is weaker evidence than a human-generated adversarial question would be — the session file's step 4 partner variant exists specifically to offer the stronger version, with its own limit stated.
4. **No `evidence-pair` or `impact` slide beyond the title** was used; the content did not present a genuine two-item comparison, and one `impact` slide (the title) matches Week 1's density (one in 24 slides). One `investigation` slide for the pause-and-write.
5. **No shared-file change proposed.** `theme.css` was sufficient as-is; no class was added or modified.

## Evidence level

**Drafted and editorially checked.** I read the deck and lecture notes start to
finish as a student with no lecturer and no baking knowledge, and confirmed:
the technical claims about yeast, gluten and salt are each traceable to the
one verified source above (not invented for narrative convenience); the T2/T3
figures in the lecture notes match `verified-sources-w2-w4.md` exactly, with
no numbers added or altered; the activity's step order (write before seeing
the follow-up) is enforced by where the follow-up text physically sits in both
the deck (`<details>`-equivalent next slide) and the lecture notes (inside a
collapsed `<details>` block, matching Week 1's pattern); and the fictional-label
sentence appears in both the deck's title-area framing and its closing slide,
matching Week 1's placement in both places.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at either marking viewport or any other. Text fit, legibility,
overflow and navigation on 27 slides remain entirely unchecked, per current
instruction that the user performs build and visual checks.
