# Round 2 brief: targeted novelty search

We want to know whether either of two candidate proofs of the Pythagorean theorem is already published. **Search by figure and mechanism**, and **also check whether the intermediate identities appear in a Pythagoras proof**. Use legal open sources only: publishers' free pages, arXiv, archive.org, cut-the-knot, Crossref, Semantic Scholar, Unpaywall (`email=test@example.org`), and web search. Do not use Sci-Hub, LibGen, or any other shadow library. Never send personal information.

Notation: right angle at C; a=BC, b=CA, c=AB. H is the foot of the altitude from C, with p=AH, q=HB and h=CH. M_a, M_b, M_c are the midpoints of BC, CA, AB.

- **R2-1, Ptolemy on the nine-point circle.** In a right triangle, the nine-point circle is the circle on diameter C–M_c. It passes through C, M_b, M_c, H and M_a. Applying Ptolemy's theorem to the quadrilaterals C-M_b-H-M_a, C-M_c-H-M_a and C-M_b-M_c-H gives hc=ab, bh=ap and ah=bq. These use HM_a=a/2 and HM_b=b/2, the midlines, and M_cH=(p-q)/2. Then p+q=c gives c²=a²+b². Keywords to try: "nine-point circle" with Pythagoras, Ptolemy with Pythagorean and "midpoint", "Ptolemy's theorem" with "right triangle" and altitude and median.
- **R2-2, the hypotenuse segments from their difference and their product.** The power of the hypotenuse midpoint M_c with respect to the circle on diameter CA, computed along AB and along M_cM_b, gives c(p-q)=b²-a². Intersecting chords give pq=h², and ch=ab. Then (p+q)²=(p-q)²+4pq gives c⁴=(a²+b²)². Keywords to try: "difference of the squares of the legs" with "projections" and Pythagoras, the identity b²-a² = c(p-q), and "power of the midpoint".

Note that the classical identity b²−a² = (p−q)c ("the difference of the squares of the legs equals the hypotenuse times the difference of the projections") may be known in other proofs, so look for it explicitly.

For each candidate, report the 3 closest known items. For each item give the link, a one-line mechanism, and a verdict of SAME, VARIANT or RELATED, plus whether you read the full text or only the title. Log every URL and query you tried with its status.
