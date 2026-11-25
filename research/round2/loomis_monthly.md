# Round 2: Loomis and Yanney-Calderhead (American Mathematical Monthly)

Sources read in full by text search plus close reading of the relevant sections:

1. E. S. Loomis, *The Pythagorean Proposition* (ERIC ED037335, NCTM reprint of the 1940 2nd ed., 370 proofs). OCR is noisy. Loomis writes h for the hypotenuse, a and b for the legs, and numbers proofs by figure ("Sixty-Five" = fig. 65). Numbers below are from headings and figure labels, so they may be off by one where OCR dropped a heading. Page numbers are the printed ones.
2. B. F. Yanney and J. A. Calderhead, "New and Old Proofs of the Pythagorean Theorem", Amer. Math. Monthly 3 to 6 (1896 to 1899). All installments were found and read: Mar, Apr, Jun-Jul and Dec 1896; Jan, Mar, Jun-Jul, Oct and Nov 1897; Mar 1898; Feb and Mar 1899. That gives Roman numerals I to C. Their own bibliography lists exactly these issues. Proofs I to V are the "linear relations" enumeration with no figures of interest. XV to XXXII are the circle proofs. XXXIII to XC are dissections, XCI to XCVII are area, tangent-circle and escribed-circle proofs, and XCVIII to C are quaternion.
   In the notation below, Yanney's triangle is ABC with the right angle at C, and a=BC, b=AC, c=AB. This is the same as the brief.

Greps run on both texts: Ptolemy, nine-point, midpoint, "middle point", bisect, "difference of the squares", "b2 - a2", "a2 - b2", projection, median, "(x - y)", "(p - q)". Results are below.

## Headline

- **Neither candidate appears in either source.**
- No nine-point circle appears in either text. Ptolemy appears only on the circumscribed rectangle and on the circle on the hypotenuse.
- The identity b²−a² = c(p−q) does not appear as a stated line. Its content does appear inside the Krueger 1746 proof (Loomis 72; Yanney XXII). It arises there as the power of A with respect to the circle centred C of radius a. Krueger closes by adding powers, not by pq=h² and (p+q)²=(p−q)²+4pq.

## R2-1: Ptolemy on the nine-point circle

Verdict: **not found. No SAME and no VARIANT.** Three RELATED items follow.

1. **Loomis proof 65, p. 66 (Ptolemy's theorem on a rectangle).**
   - Mechanism: a right triangle completes to a rectangle, which is cyclic with equal diagonals. Ptolemy gives AC·BD = AD·BC + AB·CD, so c² = a² + b².
   - Quote: "In case the quad. ABCD becomes a rectangle then AC = BD, BC = AD and AB = CD. So AC² = BC² + AD², or c² = a² + b², a special case of Ptolemy's Theorem gives a proof of the Pyth. Theorem."
   - The source gives the statement of Ptolemy as a Wentworth theorem. It credits "the author" and cites Boon, *Companion to Elementary School Mathematics* (1924), p. 107, proof 10.
   - Verdict: RELATED. Same theorem, but the quadrilateral is the circumscribed rectangle, with no altitude, midpoints or nine-point circle.
   - Read: full text of the proof.
2. **Loomis proof 64 or 63 (fig. 63), p. 65, and again as proof 68, p. 67 (Ptolemy by similar triangles on the circle through the hypotenuse).**
   - Mechanism: a cyclic quadrilateral on the circumcircle of the right triangle. The proof adds two similar-triangle equations to get AB·HD = HB·AD + AH·DB (Ptolemy), then reads off AB² = HA² + HB².
   - Quotes: "Adding (1) and (2), HD · AB = HB · AD + AH x DB" and "In fig. 63 above it is obvious that AB x BH = AH x DB + AD x BH. AB² = HA² + HB²".
   - Credited to Halsted, *Elementary Geometry* (6th ed., 1895), p. 202. Loomis says it is a particular case of Prop. XXXIII, Book IV, Davies Legendre (1858), and Wentworth 1895. Runkle's Math. Monthly 1859, Dem. 22, also gives it.
   - Verdict: RELATED. It uses Ptolemy on a circle containing the vertex, but the quadrilateral has a diameter as side and the circle is the circumcircle, not the nine-point circle. No H, M_a or M_b chords.
   - Read: full text. The exact proof number is uncertain within 63 to 65 because of OCR heading loss.
3. **Yanney-Calderhead XXIII (Fig. 18), Monthly vol. 4 no. 1 (Jan 1897), p. 12.**
   - Mechanism: circumscribe the triangle, complete the rectangle, and equate cross products.
   - Quote: "Circumscribe the triangle by a circle. Complete the rectangle. Then, AB : CD = CB : AD + AC : DB, or c² = a² + b²."
   - Note: "Though this method must have been known independently to many persons, it seems that its first appearance in print was in 1859, in Runkle's Mathematical Monthly."
   - Verdict: RELATED. This is the same circumscribed-rectangle Ptolemy as Loomis 65, without the name.
   - Read: full text.

Searches for "nine-point", "nine-points" and Ptolemy near the midpoint of the hypotenuse found only an unrelated nine-points remark (Monthly 3(4), ~p. 109: "circumcircle of any triangle is the nine-points circle. Brocard." in a problem section). No proof uses H, M_a or M_b as concyclic points.

## R2-2: b²−a² = c(p−q) with pq = h²

Verdict: **no SAME.** Closest is a VARIANT or RELATED item, Krueger 1746. The stated identity b²−a² = c(p−q) never appears as a displayed line in these sources.

1. **Krueger 1746: Loomis proof 72, p. 70 (cited from Wipper p. 41 fig. 42 and Monthly IV, p. 11); Yanney-Calderhead XXII, Monthly vol. 4 no. 1 (Jan 1897), pp. 11-12, Fig. 17. Verdict: VARIANT of the first half, RELATED overall.**
   - Mechanism: a circle centred at the right-angle vertex C with radius the shorter leg a, and E the midpoint of AB (that is M_c). Power of A gives AB·AL = b²−a², and since AL = p−q this is c(p−q) = b²−a². Power of the midpoint E gives (a−c/2)(a+c/2). Adding the two relations gives c² = a² + b².
   - Quotes: "Complete the figure as indicated, the point E being at the middle of AB." and the equations "AH : AL ... b² − a² ... (a − ½c)(a + ½c) ... a² + b² − ½c²".
   - Yanney's note says "This method is credited, by Wipper, to Krueger, 1746."
   - Loomis proof 72 says "investigation of one case, when it falls at middle point of AB, is sufficient." and "The above solution is given by Krueger".
   - What is shared with R2-2: the power of the hypotenuse midpoint M_c and the quantity b²−a² = c(p−q).
   - What differs: the circle is centred C with radius a, not the circle on diameter CA. The finish is a sum of two powers, with no pq = h² or (p+q)² = (p−q)² + 4pq, and no c⁴.
   - Read: full text of Yanney XXII. Loomis 72 is read but badly garbled by OCR. I reconstructed the algebra independently: AL = (b²−a²)/c and EL = (2a²−c²/2)/c give c/2 = AL + EL, so c² = a² + b². The original (Krueger 1746, Wipper 1880) was not read.
2. **Hoffmann 1818: Loomis proof 53 (fig. 53), p. 59-60, and Loomis proof 16, p. 41-42 (Hoffmann, via Wipper 1880 p. 38 fig. 37); Yanney-Calderhead X, Monthly vol. 3 (Jun-Jul 1896), p. 170. Verdict: RELATED (the pq = h² half).**
   - Mechanism: the altitude splits the hypotenuse. Use CD² = AD·BD (h² = pq), then expand (AD+DB)² = AD² + 2AD·DB + DB², and replace the cross term by 2CD² to get AB² = AC² + BC².
   - Quotes: Loomis 53: "(4) AB = AC + CB so (5) AB² = AC² + 2AC·CB + CB² ... (6) HC² = AC × CB ... (11) AB² = HB² + HA²." Yanney X: "But CD² = AD·BD. ∴ AB² = AD² + 2AD·BD + BD² = AD² + BD²" (this is the assume-and-verify form).
   - Verdict: it uses the pq = h² product and (p+q)² expansion, but never the difference identity b²−a² = c(p−q), and not the (p−q)² + 4pq form.
   - Read: full text.
3. **Circles on the legs as diameters, meeting at the altitude foot H: Loomis proofs 86-87, pp. 80-81; Yanney-Calderhead XXIV, Monthly vol. 4 no. 1 (Jan 1897), p. 12 ("one of Richardson's", Runkle 1859, Dem. 27). Verdict: RELATED.**
   - Mechanism: power of A with respect to the circle on diameter CA gives b² = c·p, and similarly a² = c·q. Adding gives c² = a² + b².
   - Quote: "(1) HA² = HC × AB. (2) BH² = BC × AB. Adding ... = AB(AC + BC) = AB²" (Loomis 86, note a) and Yanney XXIV "AC² = AD·AB and BC² = BD·AB. Add".
   - This is the same circle on diameter CA as R2-2 and the same power-of-a-point, but it takes the sum of the two relations, not the difference or the midpoint.
   - Read: full text.

Other items checked that are not close, listed for the record:

- Loomis proofs 56 to 58 and Yanney XV, XVI (circle centred B, radius c or a): b² = (c−a)(c+a). This is a difference-of-squares chord product, not (p−q).
- Loomis proofs 79 to 85, and Yanney XXVII to XXIX (circle centred at the midpoint of the hypotenuse, tangent to BC; power of B gives a²/4 = ½(c−b)·½(c+b)): midpoint-of-hypotenuse circles, but the end game is a difference of squares, not (p−q)c.
- Loomis intro (p. 18, line ~1540): the identity (x+y)² = (x−y)² + 4xy appears only in Dr. Martin's generation of Pythagorean triples, not as a proof of the theorem.
- Loomis proof 19 (Versluys fig. 80): ends in h⁴ = h²a² + h²b² by area comparison, a different mechanism.
- Loomis proof 168: all lines through the hypotenuse midpoint, an area proof with squares (Ann Condit, 1938). Unrelated mechanism.
- The Monthly note "Note on the Pythagorean Proposition" by D. A. Lehman (vol. 6, p. 228, Dec 1899 index) could not be located in the OCR of vol. 6, so its content is unread.

## URL and query log

Downloads (curl -L, saved under the scratchpad `r2/`; all returned HTTP 200):

- https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt (433 KB, Loomis)
- Monthly issues, pattern https://archive.org/download/{id}/{id}_djvu.txt, all 200:
  - sim_american-mathematical-monthly_1896-01_3_1, _1896-02_3_2, _1896-03_3_3, _1896-04_3_4, _1896-05_3_5, _1896-10_3_10, _1896-11_3_11, _1896-12_3_12, _1896_3_index
  - sim_american-mathematical-monthly_june-july-1896_3_6-7, _august-september-1896_3_8-9
  - sim_american-mathematical-monthly_1897-01_4_1, _1897-02_4_2, _1897-03_4_3, _1897-04_4_4, _1897-05_4_5, _1897-10_4_10, _1897-11_4_11, _1897-12_4_12, _1897_4_index
  - sim_american-mathematical-monthly_june-july-1897_4_6-7, _august-september-1897_4_8-9
  - sim_american-mathematical-monthly_1898-01_5_1, _1898-02_5_2, _1898-03_5_3, _1898-04_5_4, _1898-05_5_5, _1898-10_5_10, _1898-11_5_11, _1898-12_5_12, _1898_5_index
  - sim_american-mathematical-monthly_june-july-1898_5_6-7, _september-october-1898_5_8-9
  - sim_american-mathematical-monthly_1899-01_6_1 through _1899-05_6_5, _1899-10_6_10, _1899-11_6_11, _1899-12_6_12, _1899_6_index
  - sim_american-mathematical-monthly_june-july-1899_6_6-7, _august-september-1899_6_8-9

Index queries (archive.org advancedsearch, all 200):

- identifier:sim_american-mathematical-monthly_189* (58 results, used to find ids; June-July and August-September issues have different ids, found by a title/year search).
- title:(american mathematical monthly) AND year:1896/1897/1898/1899.

Text greps run locally on the OCR: Ptolemy, nine.point, "middle point of the hypotenuse", midpoint, mid-point, bisect, "difference of the squares", h2, "b2 - a2", "a2 - b2", projection, median, "(x - y)", circle, chord, secant, tangent, semi, inscri, circumscri, concycl, cyclic, "mean propor", Krueger, Pythagorean.

Not tried: Wipper (1880), Fourrey, Versluys, Hoffmann, Runkle 1859 originals. Loomis cites them for the same items, so the verdicts above would not change.

## Notes for the main session

- Loomis's own caveat in his circle section says all circle proofs reduce to similar triangles. That fits the chord/power approach in R2-2.
- A search tip for the next round: Krueger/Wipper (1746/1880) and Yanney XXII are the only items using the hypotenuse midpoint with a power-of-a-point, so they are the best precedent to cite or to distinguish from.
