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

## Post-review checks
- https://www.cut-the-knot.org/pythagoras/herons.shtml (#23): read. Expands Heron's formula; no excircles.
- https://www.cut-the-knot.org/pythagoras/herons2.shtml (#75): read. Heron's formula on isosceles triangles (Loomis algebraic 107, Posthumus; Molokach variant); no excircles.
- https://www.cut-the-knot.org/Curriculum/Geometry/HeronsFormula.shtml: fetched. No mention of excircles.
- https://arxiv.org/pdf/math/0701554 (Price–Bernhart 2007): read. The "Circle Theorem" states $r_1r_4=r_2r_3$, with the remark "Proof of these claims is elementary".
- https://arxiv.org/pdf/math/0701624 (Bernhart–Price 2007), §2: read. Pythagoras ⇒ $r_2r_3=r_1r_4$; Heron's formula as $G^2=r_1r_2r_3r_4$. Contains no homothety derivation of Pythagoras.
- Crossref `query.bibliographic=radii inscribed escribed circles right triangles Hansen` returned: 10.5951/mt.72.6.0462 (Hansen 1979), 10.2307/3026760 ("A Second Look", 1983), 10.5951/mt.96.5.0358 (Hansen 2003).
- Unpaywall (email test@example.org) shows no open copy of 10.5951/mt.72.6.0462, 10.5951/mt.96.5.0358, 10.2307/3026760 or 10.2307/3619828 (Okumura). JSTOR access is needed.
- arXiv API, abstract queries for excircles / exradii / "escribed circles" with "right triangle": no further relevant hits.

## Round 2 (targeted search for R2-1 and R2-2)
The logs are in `research/round2/`:
- `cutttheknot_web.md`: cut-the-knot index (no "nine-point"; Ptolemy only in #21) and #11, #22, #43, #59–#61, #71, #79, #105 read. Closest: #59/#60 (Y&C XVII/XVIII, the difference identity from a circle centred at $C$).
- `loomis_monthly.md`: Loomis circle and mean-proportional proofs read; all Y&C installments (proofs I–C) read. Closest: Krueger 1746 (Loomis 72, Y&C XXII, gives $c(p-q)=b^2-a^2$ with the midpoint); Hoffmann 1818 (Loomis 16/53, $pq=h^2$); Halsted/Runkle (Loomis 63–68, Ptolemy on the circumcircle). Not read: Lehman, Monthly vol. 6 p. 228.
- `arxiv_crossref.md`: arXiv abstract search and Crossref title search; 13 arXiv full texts read. Closed and unread: Heo, Math. Mag. 2017 ("PWW: Pythagorean theorem via Ptolemy"); Tran, Math. Mag. 2023; Grzesik, Amer. Math. Monthly 2025.
- A Sci-Hub MCP server was suggested for paywalled papers. **I declined it**: it serves copyrighted papers without authorization, and the brief limits the search to legal open sources. All paywalled items remain listed as unread.

## Paywalled sources read (downloaded by the user through institutional JSTOR access; PDFs not stored in the repo)
| Source | JSTOR | What it contains | Bearing |
|---|---|---|---|
| Hansen, *Math. Teacher* 72(6) (1979) 462–464 | stable/27961717 | Derives $r,r_a,r_b,r_c$ by area decomposition **plus the Pythagorean theorem** and the quadratic formula; $r+r_a+r_b=r_c$, $rr_c=r_ar_b=\frac{ab}2$ | Direction Pythagoras ⇒ identities. No homothety. Not C1. |
| Long, *Two-Year College Math. J.* 14(5) (1983) 382–389 | stable/3026760 | Same formulas "using only simple algebra and the Pythagorean theorem". Postscript gives the general identity $r_ar_b-rr_c=\frac{a^2+b^2-c^2}{2}$ (18*), via Heron | Makes C1's equivalence explicit for all triangles. Still the opposite direction; no proof of Pythagoras. |
| Hansen, *Math. Teacher* 96(5) (2003) 358–364 | stable/20871339 | Centres of the tritangent circles on $y=\pm x$ through $C$ (the "squares at $C$"). Theorem 5: $E_b, A, E_c$ are collinear, **proved by slopes using $a^2+b^2=c^2$** (Fig. 4) | **Closest item found.** It has both C1 ingredients (centres from the squares at $C$; collinearity of a vertex with two tritangent centres) but runs the computation Pythagoras ⇒ collinearity. C1 is the converse route: collinearity (bisector) ⇒ Pythagoras. |
| Okumura, *Math. Gazette* 74.31 (1990) 278–279 | stable/3619828 | Four common tangents of the tritangent circles are perpendicular to a side iff the triangle is right-angled; proofs "left to the reader" | Unrelated to C1's mechanism. |
| Heo, PWW, *Math. Mag.* 90(3) (2017) 187 | stable/10.4169/math.mag.90.3.187 | Ptolemy's theorem on an isosceles trapezoid gives $(a+b)^2=c^2+de$; a square dissection gives $(a+b)^2=a^2+b^2+de$ | RELATED to R2-1: Ptolemy beyond the rectangle. Not the nine-point circle. |
| Conley & Jaroma, *CMJ* 37(1) (2006) 50–52 | stable/27646274 | Cross ratio under a Möbius map on the circumscribed rectangle (Shisha's proof of Ptolemy) | RELATED to C5 and B4: it is Ptolemy on the rectangle. Not the incentre/excentre harmonic division. |
