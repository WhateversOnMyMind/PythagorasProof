# Search log (evidence of novelty)

## Stage 0 (mapping the known space)
The full URL and query logs are at the end of each file in `research/stage0/`. Summary:
- cut-the-knot index https://www.cut-the-knot.org/pythagoras/index.shtml: fetched OK, proofs #1 to #122.
- Loomis, *The Pythagorean Proposition*: https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt and https://files.eric.ed.gov/fulltext/ED037335.pdf: OK (OCR).
- arXiv API: about 15 queries (https://export.arxiv.org/api/query?...) returned about 180 records, of which 8 are relevant.
- Trigonometric literature: Luzia arXiv:1502.06628, Kise–Uehara–Shinzato arXiv:2506.06304, Shene (pages.mtu.edu) PDF, Parabola 60(2) 2024. Zimba's Forum Geometricorum page was unreachable (DNS); the Jackson–Johnson Monthly paper returned 403.
- Physics: Levi (SIAM 403, MAA 403), cut-the-knot mechanical pages OK, viXra 2404.0106 OK.

## Stage 3 (targeted novelty search, one agent per source)
Full per-source logs, with every URL and query and its status, are in `research/stage3/`:
| Source | File | Coverage | Result |
|---|---|---|---|
| cut-the-knot (index + subpages + site search) | `cutttheknot.md` | #1–#122, the incircle/chord/bisector subpages, ThreeIncircles/FourIncircles pages, CTK Exchange | No SAME. Closest: forum thread 694 (Pestich), the ThreeIncircles page |
| arXiv | `arxiv.md` | API mechanism queries plus full texts of about 8 proof papers | No SAME |
| Loomis (archive.org OCR, full text grep) | `loomis.md` | all 370 proofs; incircle Fig. 84 (Bauer 1891) | No SAME. E1 confirmed old |
| Mathematical Gazette | `gazette.md` | Crossref ISSN 0025-5572 queries; titles only (paywall) | No SAME by title. Unread: 74.31, 89.21, 79.57, 81.20, 98.06 |
| Mathematics Magazine | `mathmag.md` | Crossref, Unpaywall (closed), PWW I OCR | No SAME. Dulio–Laeng arXiv 1910.08396 (area = xy) |
| College Math. Journal (+ Forum Geom. attempt) | `cmj.md` | Crossref titles; forumgeom.fau.edu unreachable | No SAME. Unread: Conley–Jaroma "Pythagoras by the Cross Ratio" |
| Amer. Math. Monthly | `monthly.md` | Y&C series 1896–99, full OCR; Sawyer/Loomis 1901; Crossref titles | No SAME. Y&C XXVI (identity), XCVII (C-excircle + area) |

Verified directly by the orchestrator (not just reported by agents):
- https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml: read. Circle AIB, intersecting chords, $r\cdot R_c=(p-a)(p-b)$, then area $=ab/2$.
- https://archive.org/download/sim_american-mathematical-monthly_1897-01_4_1/sim_american-mathematical-monthly_1897-01_4_1_djvu.txt: read. Y&C XXVI says "EH:ED::HL:DL (See Olney §971) ... (AC+AB−BC)(BC+AB−AC)=(AC+AB+BC)(AC+BC−AB)". The figure uses the circles of XXV (centres A and B).

Blocked or unread (residual novelty risk): Gazette 74.31 (Okumura 1990), 89.21 (Clarke 2005), CMJ "Pythagoras by the Cross Ratio" (2006), Forum Geometricorum (DNS failure), Nelsen PWW II/III contents (403), tandfonline (403 throughout).
