# Week 7 handoff — Change the form

Authored as one of four parallel forked sessions covering weeks 5–8 under
`guidelines.md`, from the W7 row of `docs/material.md`. Week 6 had already
landed on disk when I started reading; weeks 5 and 8 had not. I worked from
`docs/material.md`'s row for content and read `src/content/lectures/week-06.md`
directly (it existed) before writing my own opening transition, rather than
inventing its wording.

## Files written

| File | Status |
| --- | --- |
| `src/decks/week-07.deck.mdx` | New. 30 slides. |
| `src/content/lectures/week-07.md` | New. Continuous notes, 8 numbered sections. |
| `src/content/sessions/07-change-the-form.md` | New. ~25-minute investigation. |
| `docs/lecture-handoffs/week-07.md` | This file. |

Frontmatter: lecture `week: 7`, `date: 2027-04-05`, `slides: /decks/week-07/`,
`related: [sessions/07-change-the-form, lectures/week-06]`. Session
`week: 7`, `date: 2027-04-05`, four `spec:` lines, `related: [lectures/week-07]`.
Deck frontmatter is `title` and `description` only. The date sits inside the
teaching period in `src/course-config.ts` (2027-02-22 to 2027-05-28) and
follows the weekly cadence weeks 1–6 already use (7 days apart).

Session slug: `07-change-the-form`, chosen to match the week's working title
and the pattern of `06-what-you-can-use`.

## The example, and why it is new

The continuing example is **compound interest**, explained first as a fluent
analogy to a sibling, then applied to an unexpected comparison for a
colleague. This is a fresh domain, distinct from the Wi-Fi/zipper/lock
material in weeks 1–4, from week 6's cyclist-and-navigation-app example (its
lecture confirmed this on read), and from the recipe-scaling and
paint-mixture examples the brief rejects as defaults. It needs no
prerequisite finance knowledge; every number is defined and worked through
from scratch, both in the deck and the lecture notes.

Fictional character: **Kavi** (they/them), distinct from Sam (W1), Nadia and
Theo (W2), Priya (W3), Rowan (W4), and Elena (W6, confirmed by reading
`week-06.md`). The colleague who asks the harder question is left unnamed to
avoid introducing an unnecessary second character.

## The two performances and the point they make

1. **Sibling explanation ("the snowball"):** fluent, correct, delivered to a
   no-background audience. Flagged as potentially a rehearsed line — echoing
   Week 2's illusion of explanatory depth — because a fluent restatement in
   one familiar shape cannot rule out memorisation.
2. **Colleague's comparison question:** a new audience, no analogy available,
   and a comparison rather than a description — annual vs monthly compounding
   at the same nominal rate. Two candidate answers are given as an
   `evidence-pair`:
   - **Version A** (incorrect): reuses the surface feature of the snowball
     line ("interest earns interest") but reasons backwards from it to the
     wrong conclusion, that smaller per-period amounts mean less total
     interest.
   - **Version B** (correct): reasons from the mechanism — more compounding
     events, not smaller individual amounts, raises the total — and reaches
     the right answer.

I checked Version B's correctness by direct calculation, not by assertion:
on $10,000 at a nominal 6% for three years, annual compounding gives
$11,910.16 and monthly compounding gives $11,966.81 (Python, `10000*1.06**3`
vs `10000*(1+0.06/12)**36`), a difference of $56.65. The deck and lecture
round this to "about $11,910" / "about $11,967" / "roughly $57 more," which
is accurate to the cent-level figures. The $1,000-at-10%-for-three-years
compound-vs-simple-interest mini-example earlier in the lesson ($1,331 vs
$1,300, a $31 difference) is also hand-checked arithmetic.

### The deliberate limit

Per the W7 row's "failure to produce" — reformatting and adaptation can
themselves be rehearsed — the lesson does not let Version B settle the
question. A whole section ("The deeper problem with changing the form" /
lecture §6) argues that if loan-compounding comparisons are common in
whatever Kavi read, Version B could be a second memorised template rather
than genuine transfer, and the transcript alone cannot distinguish the two
readings. This is the week's own ambiguity, parallel in spirit to Week 4's
designed ambiguity but built around a different failure mode (rehearsed
adaptation vs. rehearsed base explanation).

### Handoff to Week 8

Both the deck and lecture end by naming the next problem directly: every task
in this lesson, however unfamiliar in form, was still something the subject
knew to expect inside a lesson built to prompt exactly that kind of answer.
Week 8 is named as asking what changes when the test is genuinely
unannounced. No Week 8 file exists yet and none was referenced by path or
`related:` edge — only in prose.

## Sources, and what kind of support each gives

| Source | Kind of support | Verification |
| --- | --- | --- |
| Barnett, S. M., & Ceci, S. J. (2002). "When and Where Do We Apply What We Learn? A Taxonomy for Far Transfer." *Psychological Bulletin*, 128(4), 612–637. | **Synthesis** of the transfer-of-learning literature, not a single experiment | **Verified by direct read.** Found via web search, fetched the full PDF (`https://rapunselshair.pbworks.com/f/barnett_2002.pdf`), and read pages 612–616 as rendered images (abstract, introduction, taxonomy framing, and the analogical-transfer review section). Citation, DOI, and page range confirmed from the paper's own header (`Psychological Bulletin, 2002, Vol. 128, No. 4, 612–637`, DOI `10.1037/0033-2909.128.4.612`). |
| Schliemann & Magalhães (1990), the Brazilian-cooks proportional-reasoning study | **Empirical finding, cited second-hand** | I read Barnett & Ceci's own description of this study on page 616 of the PDF myself — this is not an AI recollection or search snippet, it is what the source I verified actually says. I have **not** read Schliemann & Magalhães directly, and every mention of the study in the deck, lecture, and session attributes it explicitly to "as reported in Barnett and Ceci (2002)" or "Barnett and Ceci report," never as a claim I verified independently. |
| Federal Reserve Bank of St. Louis (2018), "How Compound Interest Works." | **Technical grounding only**, explicitly labelled as not evidence for any claim about learning | Fetched directly; the quoted definition ("interest on your original principal — plus on the interest your investment generates") and the $5,000-at-8%-for-36-years example are both drawn from the actual page content returned by the fetch, not recalled. The page does **not** discuss compounding frequency (monthly vs. annual) — I did not attribute that comparison to this source; the frequency arithmetic in the lesson is my own calculation, presented as such. |

I attempted `investor.gov`'s two compound-interest pages first (a more
obviously canonical source for this audience) and both returned HTTP 403 to
automated fetching; I did not use anything from them and switched to the St.
Louis Fed page, which fetched successfully. Clark & Chalmers and Rozenblit &
Keil (already verified for weeks 1, 2, 4, 6) were deliberately **not** reused
here — neither does new work for a lesson about transfer across form, and the
guideline prefers a week with one well-verified new source over one padded
with convenient reuse.

## Verified by direct inspection vs not

**Directly verified by me:**

- `src/decks/week-07.deck.mdx` compiles under `@mdx-js/mdx` 3.1.1 (already in
  `node_modules/.pnpm`), checked with a one-line `compile()` script run from
  the project root and deleted immediately after; `week-01.deck.mdx` was
  compiled in the same run as a control and also passed.
- Both new sources' URLs return content (the PDF fetch succeeded; the Fed
  page fetch succeeded). The two `investor.gov` URLs I tried and abandoned
  are not cited anywhere in the shipped files.
- The compound-interest and loan-comparison arithmetic (`$1,331` vs `$1,300`;
  `$11,910.16` vs `$11,966.81`) computed independently in Python and matches
  what the deck, lecture, and session state.
- Frontmatter fields against `src/content.config.ts`: `week` is an integer
  1–12, `date` parses as ISO, `slides` matches `^/decks/[a-z0-9-]+/$`,
  `related` entries use the `<collection>/<slug>` form the schema expects
  (confirmed against `astro-course-university/schemas.ts`'s `courseNodeSchema`,
  which allows `related` on any node type, including sessions).
- Every internal link in the three files points to `week-07`,
  `change-the-form`, or (once, in prose and in the frontmatter `related:`)
  `week-06`, which I confirmed exists on disk before adding the edge — I read
  its actual closing paragraph and adjusted my own opening transition so the
  two weeks' framing of the resource-vs-task distinction do not contradict
  each other.
- Slide density: 30 slides. A rough word count of the body slides (excluding
  the two-cell `evidence-pair` slide and short transition slides) sits mostly
  in the 55–90 word range, matching the Week 1 benchmark (mean 64, max 78)
  closely enough; a small number of denser slides (the transfer-literature
  and "what version A tells us" slides) run to roughly 85–95 words, similar
  to Week 4's acknowledged range.

**Not verified:**

- **No build, dev server, type check, or visual check was run**, per current
  user preference recorded in `guidelines.md` §6. Nothing here establishes
  that any slide fits or stays legible at 1920×1080 or 390×844.
- I did not independently re-read Schliemann & Magalhães (1990) — see the
  sources table above for exactly what is and is not attributed to it.
- Week 5's and Week 8's files did not exist when I finished (I checked
  before finalising this handoff). I have not read Week 5's lecture, so my
  reference to "Week 5's ladder" (in Week 6's own text, quoted only in
  passing) was not independently checked against Week 5's actual wording;
  I did not repeat or rely on any specific Week 5 claim myself.

## Intended edges not yet created

- `src/content/lectures/week-08.md` (once it exists) should add a `related:`
  edge back to `lectures/week-07`, matching the prose handoff already written
  in both directions. I did not add a forward edge from Week 7 into a file
  that does not exist yet.

## Risks and outstanding decisions

1. **Domain choice (finance) is new to the course.** Weeks 1–6 use
   networking, a zip fastener, a lock (twice), and city navigation — all
   mechanical/technical domains. Compound interest is the first
   quantitative/financial example. I judged this acceptable and useful
   precedent-wise (guidelines explicitly welcome domains beyond
   everyday-technology once a domain fits the week and needs little
   prerequisite knowledge), but it is a genuine first for the course and
   worth the integration session's attention if a all-technology throughline
   is preferred instead.
2. **The `evidence-pair` slide's two "Version A / Version B" quotes are
   short, invented dialogue,** not derived from any source; both are labelled
   fictional in the deck's closing slide and the lecture's opening paragraph,
   consistent with how Sam's, Rowan's, and Elena's quoted lines are labelled
   in weeks 1, 4, and 6.
3. **One `evidence-pair` use, for the two candidate answers** — a genuine
   two-item comparison, consistent with the guideline's restriction on the
   class. Two `impact` slides beyond the title (the "changing the form is
   not the same as removing preparation" transition slide). Two
   `investigation` slides plus a third investigation-style activity in the
   lecture/session pair only (the reader's own two-explanation exercise),
   matching the "short independent activity" and "second attempt" beats in
   the guideline's suggested progression.
4. **I did not verify Week 6's citation of Clark & Chalmers §4/§5** myself —
   I read Week 6's own text to align my transition paragraph, but I did not
   re-open Clark & Chalmers to check Week 6's quoted four conditions. That
   remains Week 6's claim, not mine.
5. **No shared-file change proposed.** `theme.css` was sufficient as
   written; no new slide class was needed.

## Evidence level

**Drafted and editorially checked**, not visually reviewed. I read the deck
front to back as a student with no background in personal finance, and
checked that: every technical term (compound interest, simple interest, near
transfer, far transfer) is defined before it is used to judge Kavi's answers;
both activities state a time, a task, and a worked response; the arithmetic
in the worked response actually supports the stated conclusion; the
"Version A is wrong / Version B is right" framing does not overstate what
either version's author would have believed, since both are presented as one
person's possible performances, not two different people. The MDX parses,
frontmatter matches the schemas, the internal links resolve to files that
exist, the date is inside the teaching period, and the two new sources carry
only the support their own text was checked to provide.

**Not visually reviewed.** No build was run and no page was opened in a
browser, at any viewport.
