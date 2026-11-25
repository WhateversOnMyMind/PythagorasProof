# Round 2: arXiv and Crossref search (R2-1, R2-2)

Searched 2026-11-25. Sources: arXiv API (HTTPS), Crossref API (all journals), plus Semantic Scholar and Unpaywall for abstracts and OA status of the few journal hits.

## Bottom line

- **R2-1 (Ptolemy on the nine-point circle): no SAME or VARIANT found.** No arXiv or Crossref item combines a Pythagoras proof with the nine-point circle. The only Ptolemy-based Pythagoras items are the rectangle special case or a closed-access paper whose full text I could not read.
- **R2-2 (difference and product of hypotenuse segments, power of M_c): no SAME or VARIANT found.** No item contains b²-a² = c(p-q) or the (p+q)² = (p-q)² + 4pq route. The closest items use the circumcircle with the hypotenuse midpoint (area argument) or the hypotenuse split from the incircle.
- All nine re-checked arXiv papers are unrelated to both candidates (see the re-check table).
- Caveat: arXiv `all:` searches only titles and abstracts, and Crossref returns titles and metadata. A proof buried inside a longer text would not show up. The two closed-access items are title or abstract only.

## R2-1: Ptolemy on the nine-point circle (C-M_b-H-M_a etc.; hc=ab, bh=ap, ah=bq)

| # | Item | Mechanism | Verdict | Read |
|---|------|-----------|---------|------|
| 1 | Heo, "Proof Without Words: Pythagorean Theorem via Ptolemy's Theorem", Math. Mag. 90(3):187 (2017), https://doi.org/10.4169/math.mag.90.3.187 | Ptolemy applied in a cyclic quadrilateral to get a²+b²=c². The figure is not visible to me. A one-page PWW most plausibly uses the rectangle (the classical case). | RELATED (unverified) | Title and metadata only. Closed access (Unpaywall: closed; publisher page blocked by a Cloudflare 403; Semantic Scholar has no abstract). |
| 2 | Tran, "A Generalization of the Pythagorean Theorem via Ptolemy's Theorem", Math. Mag. (2023), https://doi.org/10.1080/0025570x.2023.2166328 | Abstract: "We establish a generalization of the Pythagorean theorem with a proof using Ptolemy's theorem." It generalizes the statement, so it is probably not the right-triangle nine-point configuration. | RELATED | Abstract only (via Semantic Scholar). Closed access. |
| 3 | Ptolemy Relation and Friends, arXiv:2302.06379, https://arxiv.org/abs/2302.06379 | Remark that for a rectangle ABCD, Ptolemy's theorem becomes the Pythagorean theorem. No nine-point circle, altitude or median. | RELATED (trivial special case) | Full text. |

Other R2-1 checks:
- arXiv:2507.10444 ("Ptolemy's equation and kin"), arXiv:2605.23430 (Penner, Ptolemy and Casey in several dimensions) and arXiv:2007.00002 (Theorems of Euclidean geometry through calculus): full text read. They use Ptolemy but never prove Pythagoras with it. 2007.00002 derives Pythagoras and Ptolemy separately by differential equations.
- arXiv:1904.02011 (golden ratio, symmedians, nine-point circle): full text read. It uses the nine-point circle and Ptolemy as a lemma but proves no Pythagoras result.
- Crossref nine-point-circle hits (Math. Gazette, AMM, Edinburgh Math. Soc., etc.): titles only. None mentions Pythagoras.

## R2-2: c(p-q)=b²-a² from the power of M_c, with pq=h² and ch=ab

| # | Item | Mechanism | Verdict | Read |
|---|------|-----------|---------|------|
| 1 | Chakraborty, "Pythagorean theorem from Heron's formula: Another proof", arXiv:1702.03207 (Resonance 21, 2016), https://arxiv.org/abs/1702.03207 | Midpoint O of the hypotenuse is the circumcentre. The rectangle ABDC is built from a chord parallel to a leg, and the area is computed by Heron's formula. No p, q or power of a point. | RELATED (uses the hypotenuse midpoint and circumcircle) | Full text. |
| 2 | Dulio and Laeng, "A 'right' path to cyclic polygons", arXiv:1910.08396, https://arxiv.org/abs/1910.08396 | The incircle touches the hypotenuse at a point splitting it into two segments whose product equals the area. A Pythagoras proof is then derived (Thm 4). The segments are the incircle tangent lengths, not the altitude foot, and there is no difference identity. | RELATED (product of hypotenuse segments equals the area, but a different point) | Full text. |
| 3 | Grzesik, "Pythagoras Underwrites the Circle Power Theorem", AMM (2025), https://doi.org/10.1080/00029890.2025.2585758 | The title suggests Pythagoras is used to prove the power of a point, which is the opposite direction to R2-2. | RELATED (unverified, probably opposite direction) | Title and metadata only. Closed access, no abstract anywhere. |

Other R2-2 checks:
- No arXiv or Crossref hit contains b²-a² = c(p-q), "difference of the squares of the legs" with "projections", or "power of the midpoint". Queries for these returned only generic Pythagoras items or unrelated hits.
- Crossref titles seen and judged irrelevant from the title alone: "Behold! The Pythagorean Theorem via Mean Proportions" (CMJ 1986), "A Weak Proof of the Pythagorean Theorem" (Far East J. Math. Educ. 2024), "Pythagoras' theorem: a proof by contradiction" (Math. Gaz. 2018), "A simple drill for the Pythagorean theorem with scissors on circles!" (Int. Math. Forum 2020). The mean-proportions paper is the altitude-similarity route and is not circle-based, but I did not read it.

## Re-check of the nine previously found arXiv papers (full text read for all)

| arXiv | Title (short) | Method | Verdict vs R2-1 / R2-2 |
|-------|---------------|--------|------------------------|
| 1502.06628 | Other trigonometric proofs (Luzia) | Half-angle formula cos θ = 1 - 2sin²(θ/2) | Not related |
| 2506.06304 | Trigonometric ratios can prove Pythagoras | Isosceles triangle, tangent double angle, angle bisector. Footnote: Zimba's cyclic quadrilateral with diameter AC=1, area two ways and angle addition. No Ptolemy and no nine-point circle. | Not related to either |
| 2301.06812 | Uncountable number of proofs | Algebraic self-similar iteration of right triangles | Not related |
| 1604.03808 | Pythagoras via equilateral triangles (Navas) | Area of equilateral triangles on the sides | Not related |
| 2309.16691 | Shape derivatives (Cavallina) | Translate a triangle and compute the change in area | Not related |
| 1702.03207 | From Heron's formula | See R2-2 item 1 | RELATED to R2-2 only (midpoint, circumcircle) |
| 2507.02896 | Dissecting circles (Chang) | Areas of circular segments and semicircles on the sides, Thales | Not related (circles appear, but area decomposition) |
| 2511.00089 | Ziggurats and pyramids (Navas) | Area rearrangement with a parametric trapezium | Not related |
| 1910.08396 | A "right" path to cyclic polygons | See R2-2 item 2 | RELATED to R2-2 only (hypotenuse split by incircle) |

Text-term counts over all 32 downloaded papers: "Ptolemy" appears only in the Ptolemy-themed papers and 1904.02011, and "nine-point" only in 1904.02011. No paper contains either the nine-point circle or the identity c(p-q)=b²-a² in a Pythagoras context.

## Query log

### arXiv API (https://export.arxiv.org/api/query, max_results=50)

The first few runs returned HTTP 400 (my URL-encoding bug, spaces as %20) and were rerun with `+` encoding. Counts below are the number of entries returned, status 200 unless noted.

Zero-hit queries (all HTTP 200, 0 entries):
- all:"nine-point circle" AND all:Pythagorean
- all:"nine-point circle" AND all:Pythagoras
- all:Ptolemy AND all:"Pythagorean theorem"
- all:"Ptolemy" AND all:"Pythagoras theorem"
- all:Ptolemy AND all:Pythagoras AND all:proof
- all:Ptolemy AND all:Pythagorean
- ti:Pythagorean AND all:Ptolemy
- all:"Pythagorean theorem" AND all:"midpoint of the hypotenuse"
- all:Pythagorean AND all:"power of a point"
- all:"Pythagorean theorem" AND all:"intersecting chords"
- all:"Pythagorean theorem" AND all:"Ptolemy"
- all:"Pythagorean theorem" AND all:"right triangle" AND all:altitude
- all:"Pythagorean theorem" AND all:median
- all:"right triangle" AND all:"nine-point"
- all:"right triangle" AND all:Ptolemy
- all:"Ptolemy theorem" AND all:"right triangle"
- all:"Ptolemy" AND all:"right angle"
- all:"hypotenuse" AND all:"Ptolemy"
- all:"Pythagorean" AND all:"cyclic quadrilateral"
- all:"Pythagorean theorem" AND all:"power of a point"
- all:"Pythagorean theorem" AND all:"chords"
- all:"legs" AND all:"hypotenuse" AND all:"projections" AND all:squares
- abs:"Ptolemy" AND abs:"Pythagorean"
- ti:"nine-point circle"

Queries with hits (all HTTP 200):
- all:"Ptolemy" (50)
- all:"nine-point circle" (10)
- all:"Pythagorean theorem" AND all:proof (23)
- all:Pythagoras AND all:proof (17)
- all:"theorem of Pythagoras" (6)
- all:"Pythagoras theorem" AND all:circle (1)
- all:"Pythagorean theorem" AND all:circle (1)
- all:"Pythagorean theorem" AND all:"new proof" (1)
- all:"Pythagorean theorem" AND all:"another proof" (1)
- all:"Pythagorean theorem" AND all:"geometric proof" (2)
- all:"Pythagoras" AND all:"cyclic quadrilateral" (1)
- all:"Pythagorean theorem" AND all:"projections" (21)
- all:"Pythagorean theorem" AND all:hypotenuse AND all:segments (1)
- ti:Pythagorean AND ti:proof (9)
- ti:Pythagoras AND ti:proof (4)
- ti:Pythagoras (47)
- ti:Pythagorean AND cat:math.HO (25)
- ti:Pythagorean AND cat:math.MG (12)
- abs:Pythagorean AND cat:math.HO (50)
- abs:Pythagoras AND cat:math.HO (13)
- abs:"right triangle" AND cat:math.HO (21)
- abs:"right triangle" AND cat:math.MG (15)
- ti:"right triangle" (25)
- ti:hypotenuse (10)
- ti:Ptolemy AND cat:math.MG (14)
- ti:Ptolemy AND cat:math.HO (3)
- abs:Ptolemy AND cat:math.HO (8)
- abs:"Ptolemy" AND abs:"Pythagoras" (2: 2007.00002, 2310.09215)
- abs:"nine-point circle" AND cat:math.MG (7)
- ti:"cyclic quadrilateral" (10)
- abs:"elementary proof" AND abs:Pythagorean (3, irrelevant FLT items)
- abs:"Euclid" AND abs:"Pythagorean theorem" (1)
- abs:"Pythagorean theorem" AND abs:similar AND abs:triangles (2)

### arXiv full-text fetches (https://arxiv.org/pdf/<id>, HTTP 200, pdftotext, all read or grepped)

1502.06628, 2506.06304, 2301.06812, 1604.03808, 2309.16691, 1702.03207, 2507.02896, 2511.00089, 1910.08396, 1310.0986, 2101.10228, 1406.3402, 1305.0728, 0804.1340, 2007.00002, 2310.09215, 2507.10444, 2302.06379, 1001.0201, 2405.05278, 2605.23430, 1311.0816, 1906.07050, 2503.11678, 1806.00207, 1510.06959, 2511.00007, 1905.09724, 2005.10671, math/0701554, 1904.02011, 2208.12304.

Keyword counts (Ptolemy, nine-point, midpoint, power of, chords, median, diameter, projection) were run over all 32 files. Matches were then read in context. 0804.1340 uses the hypotenuse midpoint only for a different topic, the isosceles triangles ABO and AΓO that the median cuts the right triangle into.

### Crossref (https://api.crossref.org/works?query.bibliographic=...&rows=100), all HTTP 200 unless noted

- proof of the Pythagorean theorem using Ptolemy theorem
- Pythagorean theorem Ptolemy cyclic quadrilateral proof
- Pythagorean theorem nine-point circle
- nine-point circle right triangle
- Pythagorean theorem midpoint of the hypotenuse proof
- Pythagorean theorem median to the hypotenuse circumcircle proof
- Pythagorean theorem power of a point
- Pythagorean theorem intersecting chords proof
- difference of squares of legs equals hypotenuse times difference of projections
- right triangle altitude segments hypotenuse difference proof Pythagoras
- new proof of the Pythagorean theorem
- another proof of the Pythagorean theorem
- a proof of Pythagoras theorem circle
- Pythagorean theorem Ptolemy
- Ptolemy theorem right triangle
- Pythagorean theorem proof median altitude hypotenuse
- Pythagorean theorem proof Euclid altitude similar triangles circle
- Ptolemy theorem proof without words Pythagorean
- Pythagorean theorem proof Thales circle diameter chords
- proof of Pythagoras theorem using the circle on the hypotenuse as diameter
- right triangle projections of the legs on the hypotenuse proof Pythagorean theorem
- proof of Pythagorean theorem using cyclic quadrilaterals and circles
- proof of Pythagorean theorem power of the midpoint of the hypotenuse
- Pythagorean theorem from Ptolemy theorem on right triangle altitude foot (HTTP 429 once, rerun after a pause: 200)
- nine-point circle of a right triangle
- Euler circle right triangle Pythagorean theorem proof
- Pythagoras theorem proof Apollonius median theorem
- b^2 - a^2 = c(p - q) right triangle
- Pythagorean theorem via Stewart theorem median hypotenuse
- Ptolemy theorem Pythagorean generalization quadrilateral (HTTP 429 once, rerun: 200)
- Pythagoras proof nine point circle Euler right triangle hypotenuse midpoint circle

Crossref returns only titles and metadata, so each result list was screened by title for Pythagoras, Ptolemy, nine-point, hypotenuse, median, chord and power terms.

### Other URLs

| URL | Status | Note |
|-----|--------|------|
| https://doi.org/10.4169/math.mag.90.3.187 | 403 | Cloudflare challenge |
| https://www.tandfonline.com/doi/abs/10.4169/math.mag.90.3.187 | 403 | Cloudflare challenge |
| https://api.crossref.org/works/10.4169/math.mag.90.3.187 | 200 | Metadata only (Heo, p. 187), no abstract |
| https://api.semanticscholar.org/graph/v1/paper/DOI:10.4169/math.mag.90.3.187 | 200 | No abstract (publisher elided) |
| https://api.unpaywall.org/v2/10.4169/math.mag.90.3.187?email=test@example.org | 200 | Closed access |
| https://api.semanticscholar.org/graph/v1/paper/DOI:10.1080/0025570x.2023.2166328 | 200 | Abstract obtained (Tran) |
| https://api.unpaywall.org/v2/10.1080/0025570x.2023.2166328, same for 10.1080/00029890.2025.2585758 | 200 | Both closed |
| https://api.semanticscholar.org/graph/v1/paper/DOI:10.1080/00029890.2025.2585758 | 200 | No abstract (Grzesik) |
| https://api.crossref.org/works/10.1155/s0161171291000509 ("On Ptolemy's theorem", Shisha, IJMMS 1991) and its Unpaywall record | 200 | OA, but I did not read it |
| https://onlinelibrary.wiley.com/doi/pdfdirect/10.1155/S0161171291000509 | 403 | Wiley blocked |
| https://downloads.hindawi.com/journals/ijmms/1991/050924.pdf | 403 | Guessed URL, blocked |
| http://downloads.hindawi.com/journals/ijmms/1991/479090.pdf | not run | Blocked by the tool's permission policy (plain HTTP); not retried |
| https://api.crossref.org/works/ for 10.33774/coe-2024-knw1p-v4, 10.14293/pr2199.000872.v4, 10.33774/coe-2026-n2l6z, 10.1017/mag.2018.19, 10.1017/mag.2016.17, 10.18061/ojsm.4220 | 200 | Abstracts checked: trigonometry, contradiction and PWW items, none relevant |

Not read, full text unavailable to me: Shisha, "On Ptolemy's theorem" (IJMMS 1991). It is probably a generalization of Ptolemy's theorem rather than a Pythagoras proof.
