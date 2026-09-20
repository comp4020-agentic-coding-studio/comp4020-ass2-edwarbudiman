# Guidelines for creating the weekly lectures

This is the shared authoring guide for this repository. The user approved the
**revised Week 1 Wi-Fi lesson** as the model for explanation, design and activity
cues. Apply that standard to every week. This document is also the starting
brief for another session working on an assigned week in parallel.

## Start here

Read these files before writing:

1. `guidelines.md` — the agreed authoring standard.
2. `docs/material.md` — the 12-week sequence, your week's question, and its
   relationship to the weeks before and after it.
3. `src/decks/week-01.deck.mdx` — the approved self-guided slide example.
4. `src/content/lectures/week-01.md` and
   `src/content/sessions/01-getting-started.md` — matching notes and investigation.
5. `src/decks/theme.css` — the shared slide design; reuse it.
6. `README.md` and `src/content.config.ts` — platform rules and content fields.
7. Relevant sections of `PROJECT-BRIEF.md` and `draft-context-others.md` — course
   intent and the earlier discussion of books. Preserve the distinction between
   decided, proposed and open items. The conversation notes are not source texts.

The user's current instructions take precedence. For weekly sequencing, use
`docs/material.md`; older proposals in the brief or board discussions may use a
previous order. Flag substantive conflicts rather than silently rewriting the
curriculum. Week 1 is the style model, not a claim that the entire assignment is
finished or that every page has passed visual checks.

## 1. Content: teach without a lecturer

**Nobody will deliver these slides aloud.** Each deck must work as a complete,
self-guided lesson. Put the explanation a lecturer would supply on the visible
slides. Speaker notes and the longer lecture page must not be required to decode
an unexplained sentence on a slide.

The course concerns **how to examine understanding and defend a judgement from
limited evidence**. Students may examine themselves or another person. Keep
returning to what a response demonstrates, under which conditions, and what else
could explain it. Avoid drifting into generic study advice, technical training,
or academic writing instruction.

### Explain before compressing

- Introduce a concrete situation before the abstract idea.
- Supply the background needed to understand the example. Assume no specialist
  knowledge unless an earlier week explicitly taught it; briefly recap it then.
- Define terms on first use, in plain language and with an example.
- Explain why the conclusion follows, not only what the conclusion is.
- Show the limits of the reasoning without filling every slide with caveats.
- Use short emphasis slides to consolidate an idea already explained.
- Prefer additional slides over omitting reasoning or making the text smaller.
- Write connected sentences. Bullet points help with steps or comparisons, but
  a deck of slogans and isolated keywords is not a self-guided lesson.

**Too compressed:** “Observation ≠ inference. What can you conclude?”

**The approved approach:** describe Sam reading a Wi-Fi explanation; state what
we actually heard Sam say; explain that a claim about Sam's understanding goes
beyond that observation; consider another way Sam could produce the same words.
Only then name the distinction between observation and inference.

### Use a continuing example

Choose one accessible situation that can develop across the lesson. Week 1 uses
“connected to Wi-Fi, but a website will not load.” It first teaches the necessary
technical distinction, then uses responses to examine understanding.

Everyday technology is an approved example category, not a requirement to turn
all twelve weeks into a networking course. Other domains are welcome when they
fit the week's question and need little prerequisite knowledge. Do not return
to the rejected recipe-scaling or paint-mixture examples as defaults.

Keep these separate:

- The subject question: for example, what could explain the connection failure?
- The examination question: what does this person's answer reveal about their
  understanding, and how could we find out more?

Label invented people, situations and sample responses as fictional. Do not
present a written teaching example as actual student data or a real AI output.

### Suggested lesson progression

Use this as a scaffold, adapting it to the week's purpose:

1. The central question and why it matters.
2. How to use the lesson, expected time and materials.
3. A concrete situation and the background needed to reason about it.
4. The concept, defined through that situation.
5. A worked explanation, including why it follows.
6. A short independent activity.
7. A worked response and discussion of plausible alternatives.
8. A changed condition, counterexample or challenge.
9. A second attempt and an interpretation of the resulting evidence.
10. A short record or conclusion the student retains.
11. What remains unresolved, and why the next week follows.
12. Purposeful references and links to the companion notes and investigation.

There is no fixed slide count. Week 1's level of explanation is the benchmark;
its exact number of slides is not a quota. Do not repeat its conclusions for
all twelve weeks: each week must introduce its own problem and limitation.

### Activities must work independently

Use explicit headings such as **“Pause and write · 2 minutes”** and
**“Worked response: separate the parts.”** The text cue is required; a gold line
alone does not tell a reader what to do.

Every activity needs:

- A stated purpose and enough information to attempt it.
- A precise task, suggested time and permitted resources.
- An expected output: two sentences, a prediction, an annotated explanation,
  or another concrete record.
- A clear instruction to attempt it before advancing to the response.
- A worked response on the following slide or sequence, with reasoning.
- An explanation of what the response supports and what remains uncertain.

Use optional `<details>` answers in the lecture notes or session page. On slides,
place essential worked reasoning on visible subsequent slides. Never require a
paid book, AI subscription, live device failure or unprovided resource to
complete the core lesson.

Provide a solo route for partner activities. State what it loses: self-report
is not independent evidence of how an answer was produced. For Week 11, a solo
rehearsal does not fulfil the separate aim of administering an examination to a
real person; make that distinction explicit.

The curriculum column “Failure that must be produced” means **a limitation to
investigate**, not a required student failure. If everyone succeeds, examine
what that success establishes. Use labelled counterexamples where needed.

## 2. Design: reuse the approved visual language

Keep the existing SlopU brand and shared Astro/astromotion implementation.
Do not add a competing palette, slide framework or external font stack.

| Element | Standard |
| --- | --- |
| Palette | Use the existing brand tokens: gold `--at-primary` (#b97d1c), bronze `--at-secondary` (#8a5c13), warm grey `--at-tertiary` (#6b6154), and inherited surfaces/text. Use tokens in styles rather than duplicating hex values. |
| Typography | Public Sans from the existing theme; sentence-case headings, readable paragraphs and generous spacing. |
| Alignment | Predominantly left aligned, with a clear reading order. |
| Opening/emphasis | Use the existing `impact` class sparingly for the main question or an important transition. |
| Activities | Use `investigation` plus a visible action heading and timing. Its top border is supplementary decoration. |
| Comparisons | Use `evidence-pair` only when two items genuinely benefit from comparison. |
| Citations | Use `source-note` for brief attribution; essential explanations belong in normal body text. |
| Readings | Use ordinary prose or `reading-entry`, with a sentence explaining the reading's purpose. |

Start with roughly two or three short explanatory paragraphs per slide, usually
about 45–85 words. This is an editing heuristic, not a minimum or a promise of
fit. Break longer reasoning at a meaningful step. Do not shrink fonts to force
it onto one slide, or fill spare space merely to meet a word target.

Avoid unexplained icons, decorative diagrams, stock imagery, animations and
repeated boxes that add no teaching value. A visual should explain a relationship
more clearly than prose. Give meaningful images text alternatives. Keep links
explicit and descriptive; avoid “click here.”

Deck syntax already used here:

```mdx
---

{/* _class: investigation */}

## Pause and write · 3 minutes

[Context and a clear question.]

[What to record, available resources, and when to advance.]

---

## Worked response: [the reasoning being explained]

[Answer, reasoning, and interpretation.]
```

`---` separates slides after the initial frontmatter. Use valid MDX, including
JSX comments and `className` on embedded elements. Inspect Week 1 before
introducing unfamiliar syntax. Do not alter shared CSS from a parallel week
session; propose the change for the integration session instead.

## 3. References: choose them for a teaching purpose

Professionalism comes from accurate attribution and a well-supported argument,
not a long bibliography. Use a source because it explains the week's idea,
provides relevant evidence, or challenges an assumption.

The recurring books are:

- *Make It Stick* — Brown, Roediger and McDaniel: useful for familiarity,
  retrieval, learning and the limits of intuitive judgements.
- *The Craft of Research* — useful for claims, reasons, evidence, warrants,
  objections and qualification. Use these as tools for examining explanations,
  not as the basis for a general writing course.

Neither book must appear every week. Complementary books and primary research
papers are welcome when aligned with that week's question. For example, Week 1
uses Clark and Chalmers' “The Extended Mind” to challenge the assumption that
resources should automatically be excluded. Technical documentation can ground
a technology example, but is not evidence for a psychological claim.

### Source workflow

1. Identify the specific claim or question that needs support.
2. Find an appropriate source, preferring original research, original arguments,
   authoritative books and official documentation over second-hand summaries.
3. Inspect the relevant passage. Search snippets, conversation summaries and an
   AI's recollection are not enough for precise attribution.
4. Verify author, title, year and edition. Verify chapter titles and page numbers
   before using them; pagination can vary by edition.
5. State what kind of support it provides: empirical finding, theoretical
   argument, synthesis, or technical explanation. Do not treat them as equivalent.
6. Check that the claim is no broader than the source warrants. Where material
   is contested, acknowledge relevant limitations rather than claiming consensus.
7. Include a short reading question that tells students what to look for.

Use concise attribution beside the relevant slide claim and fuller references
at the end and in the notes. Provide working, descriptive links. Keep quotations
short and clearly attributed; prefer original explanations and paraphrases.
Do not copy substantial book passages into the site.

Distinguish **the source's argument**, **our adaptation**, and **our critique**.
The seven-rung instrument is a course construction, not a validated scale or a
model established by either book. Do not invent supporting studies or attach a
citation to a claim that the source does not make.

A book's public endnotes or preview must be labelled accurately. Do not imply
that a link provides a full chapter if it does not. If the full passage cannot
be verified, omit the precise claim or record it as an unresolved authoring
issue; do not publish guessed quotations or page numbers.

## 4. Deliverables and Astro integration

For each assigned week, produce a coherent set:

| File | Purpose |
| --- | --- |
| `src/decks/week-NN.deck.mdx` | Complete self-guided lesson. |
| `src/content/lectures/week-NN.md` | Full continuous teaching notes, examples, worked answers and references. |
| An agreed file in `src/content/sessions/` | Independent investigation, instructions and a record to retain. |

Use two-digit week numbers. Preserve existing session slugs unless the
integration session explicitly coordinates a rename: references already point
to them. Week 1 uses `01-getting-started`; Week 2 already has `02-first-review`.
For new weeks, agree a slug before writing cross-links.

Lecture frontmatter requires a title, description, integer week and date. Link
the deck with `slides: /decks/week-NN/`. Sessions also require week and date;
use their `spec:` lines for meaningful observable activity outcomes. Match the
existing schema rather than changing it to accommodate a draft.

Dates must fit the course period in `src/course-config.ts` and the agreed
teaching calendar. The existing dates are starter scheduling information, not
authority to invent the remaining calendar. If your assigned week has no agreed
date, flag that for integration and keep its content in a draft document outside
the collections until a valid date is supplied. Do not add invalid placeholder
dates or silently settle course identity or assessment policy.

Connect the lecture to its actual session using `related:`. Every reference
must resolve. Do not add a graph reference to a future file that another session
has not created yet; record the intended connection for integration. Mentioning
the next week's question in prose is fine.

Use the base-path-safe linking patterns already in the repo. In particular,
Week 1's deck uses `../../lectures/week-01/` and
`../../sessions/01-getting-started/` for companion links. Do not assume the site
is deployed at `/`, or hand-edit generated `dist/` or API files.

## 5. Working in parallel sessions

Assign a week and its exact output files before starting. Parallel authors may
read shared files but should write only their assigned files and their own
handoff note, `docs/lecture-handoffs/week-NN.md`.

**Shared files belong to the integration session:** `src/decks/theme.css`,
`src/content.config.ts`, `src/course-config.ts`, `src/site-config.ts`,
`astro.config.ts`, layouts, shared components, package/lock files, this guide,
`docs/material.md`, assessment pages and the process/harness documents.

- Inspect the current state before editing. Preserve other sessions' changes.
- Do not rename or replace another week's work.
- Do not install dependencies independently or start competing build processes
  that write the same output directory.
- Propose shared changes in your handoff rather than applying them.
- Do not commit, push, publish, change repository visibility or write the user's
  personal `PROCESS.md` account without explicit instruction.
- If separate worktrees are used, the integration session owns merges and checks.

The weekly handoff should list changed files, the example chosen, source links
and verification limits, links waiting for other weeks, outstanding decisions,
and checks actually performed. State whether the result is drafted, checked or
visually reviewed. Those are different evidence levels.

### Copy-paste prompt for another session

> Work on Week [N] only. Read `guidelines.md` and the approved revised Week 1
> files, then the Week [N] row in `docs/material.md`. Create a self-guided deck,
> full lecture notes and a matching investigation using [agreed example or your
> justified choice]. Your allowed output files are [exact paths]. The agreed
> date is [date]; preserve existing slugs. Define terms through examples, include
> explicit activity cues and worked responses, and verify purposeful references.
> Do not change shared styling, configuration, curriculum or dependencies. Keep
> a handoff at `docs/lecture-handoffs/week-NN.md`. Flag unresolved dates or links
> rather than inventing them. The user currently handles build and visual checks;
> do not run them unless asked. Do not commit or publish.

## 6. Review and validation

Before handing off, read the deck as a student with no lecturer. Check that:

- The weekly question drives the lesson, and the example has enough background.
- Terms are defined before they are used to judge an answer.
- Activities state what to do and offer reasoned responses afterwards.
- The outcome is not predetermined; successful answers are taken seriously.
- Claims, examples, references and resource conditions agree across all three files.
- The ending leaves the specific problem that the next week addresses.
- Sources are verified and fictional examples are labelled.
- References resolve or are clearly listed as pending integration.

**Current user preference: the user performs build and visual checks.** Do not
run them automatically or report them as passed. Editorial inspection and
`git diff --check` can be reported separately.

When explicitly asked to run development commands, use the mise environment:

```sh
mise exec -- pnpm install --frozen-lockfile
mise exec -- pnpm dev
mise exec -- pnpm check
mise exec -- pnpm check:evidence
```

Do not substitute system Node, global pnpm or corepack. Respect the versions in
`mise.toml`. Installation is needed only when dependencies are absent or changed.
The evidence check covers the entire assignment, so remaining starter content
elsewhere can fail it even when a week's content is ready.

Visual review should include every slide and the companion pages at 1920×1080
and 390×844, including text fit, legibility, navigation, links and activity answer
access. A successful build does not establish visual readability. Record problems
honestly for the integration session; never claim checks that were not run.
