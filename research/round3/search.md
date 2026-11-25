# Round 3 search log (volume / solid-geometry proofs of Pythagoras)

Legal, open sources only. Queries and what each returned. "Read" means I fetched and read the
text; "snippet" means I saw only a search-result summary.

## Loomis, *The Pythagorean Proposition* (ERIC ED037335, archive.org OCR, 22,137 lines)
URL: https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt. READ (grep + context).
Pattern: volume|tetrahedr|pyramid|solid|prism|cube|three.dimension|stereo|space|parallelepiped|
cuboid|frustum|cone|cylinder|sphere.
- Only hits: textbook citations ("Plane and Solid Geometry" as sources for *planar* proofs),
  a historical remark ("pyramid from its shadow", Thales), and lines 19630-19700, Loomis's
  quaternionic/"space algebra" remark: "Space geometry gives R^2 = A^2+B^2+C^2 when A, B, C are
  orthogonal". That is the 3D *generalization* stated in vector language; it is not a
  volume proof of the 2D theorem.
- Result: **none of Loomis's 370 proofs (algebraic, geometric, quaternionic, dynamic) is a
  volume or solid-geometry argument.** Loomis's "geometric" proofs are all plane dissections.

## cut-the-knot
- https://www.cut-the-knot.org/pythagoras/index.shtml (proofs #1-#122): READ; keyword scan for
  volume|3D|three-dimension|solid|tetrahedr|pyramid|cube|stereo|space found no proof (only the
  generic remark that the theorem "generalizes to spaces of higher dimensions").
  Earlier stage-0 table (`research/stage0/`) agrees: no volume proof. The only solid in the
  index is the fluid-filled prism (mechanical proofs, torque), already classed as J1 = A1.
- https://www.cut-the-knot.org/Generalization/pythagoras.shtml: READ. De Gua's theorem proved
  with $h^2=k^2+p^2$ (the planar theorem) and $a^2p^2=(r^2+q^2)p^2$. **Uses the 2D theorem.**
- https://www.cut-the-knot.org/proofs/TwoVolumes.shtml ("Volumes of Two Pyramids"): snippet;
  regular octahedron, tetrahedron vs square pyramid. Unrelated to Pythagoras.

## Web search (standard + one extended)
Queries: "proof of the Pythagorean theorem using volume of a pyramid or tetrahedron";
"stereometric proof of the Pythagorean theorem three-dimensional volume dissection";
"cut-the-knot Pythagorean theorem proof in three dimensions volumes pyramid cube";
"Pythagorean theorem proof without words volume prismatoid / frustum / square pyramid";
"Liu Hui yangma bienao qiandu Pythagorean theorem gougu volume proof solid";
"Pythagoras in three dimensions Mathematical Gazette note proof";
"new proof Pythagorean theorem using volumes ... Cavalieri ... dissection" (extended).
- No result is a volume proof of the planar theorem. Every hit is one of:
  (i) de Gua's 3D theorem (generalization, proofs use the 2D theorem, projection or vectors);
  (ii) Cavalieri used *with* Pythagoras (sphere volume);
  (iii) planar area dissection (Navas, Wolfram demos, MathWorld "dissection proof");
  (iv) Liu Hui's yangma/bie nao volumes, which are proved by halving/limits and are *not*
  connected to gougu in any source found (the gougu proof is a planar dissection).
- https://studioinfinity.org/2022/04/ (G. Whitney, "Three-D Pythagorean Theorem"): READ.
  States that the 3D theorem gives the 2D one only after adding the special case "diagonal of a
  square = sqrt2 x side" and an iterated limit, "one would never really prove the usual
  Pythagorean Theorem in this way", and proves the 3D theorem *using the 2D one*
  ("that's where I'm using the regular PT"). **Direct evidence for R3-4 (circular).**
- https://www.johndcook.com/blog/2025/11/03/de-gua : READ; numerics only.
- https://www.math.wichita.edu/~ryan/teaching/M243/Projects/ess_wp_1004_stu.pdf : READ;
  de Gua via vector areas (coordinates). Uses the distance formula.
- https://arxiv.org/html/2511.00089v1 (Navas, "ziggurats and pyramids"): READ. Its "pyramids"
  are planar (external/internal isosceles triangles on the sides, area rearrangement). Not 3D.
- Mathematical Gazette 61.22 (Bunday 1977, "Pythagoras in three dimensions") and 62.23 (Hull,
  Perfect, Heading 1978, "three approaches"): paywalled, **unread**; snippets say the topic is
  the 3D theorem, with projection and coordinate proofs. Not a volume proof of the 2D case.

## arXiv API (export.arxiv.org, abstract searches)
- abs "Pythagorean theorem" AND abs tetrahedron: 1 hit, 2207.03721 (quantum states / de Gua).
- ... AND "solid geometry"; ... AND Cavalieri; ... "three-dimensional" AND proof: 0 hits.
- ti "Pythagorean theorem" AND abs volume: 2305.08068 "A Pythagorean Theorem for Volume"
  (k-volumes and coordinate projections, a *generalization* proved by projection), 0705.4508
  (physics, irrelevant).

## Crossref
Titles returned for the three volume/solid queries: Wolfram Demonstrations (planar), Maor and
Jost books (planar), Nelsen-style PWW (Heo 2017, Ptolemy, already read), "The Proof of Volume
Pythagorean Theorem" (Pure Math. 2019, 10.12677/pm.2019.96096; no abstract; by its title the
n-dimensional k-volume generalization), Weiss/Mathematical Gazette items. No planar-theorem
volume proof found.

## Not available / residual risk
- Gazette 61.22 and 62.23, Maor sidebar "A Most Unusual Proof" (Princeton 2019), Beautiful
  Geometry ch. 5-6 (Maor-Jost): paywalled or book, unread. By title and snippets none is a
  volume proof of the planar theorem.
- Nelsen, *Proofs Without Words* I-III: not opened page by page; web search found no volume
  proof of Pythagoras there.
