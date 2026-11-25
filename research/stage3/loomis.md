# Stage 3: Loomis, "The Pythagorean Proposition" (ERIC ED037335, 1968 reprint, 370 proofs)

Source: https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt (curl -L, HTTP success, 22137 lines, 433092 bytes), saved locally in the scratchpad as loomis.txt and treated as untrusted data.

## Caveats
- The OCR is noisy. Many proof headings ("Eighty-Four" and so on) are garbled or lost, so I cite **Fig. N** (Loomis's figure number, which matches the Contents table) and the **printed page** (running header "ALGEBRAIC PROOFS nn" or "THE PYTHAGOREAN PROPOSITION nn").
- Contents ranges (figure numbers): C1 circle 54-85 (chords 54-68, secants 69-76, tangents 77-85, two circles 86-87); D ratio of areas 88-92; E limits 93-94; F algebraic-geometric 95-99; G similar polygons 100-103.
- In the F and G region the printed proof headings ("One Hundred One" and so on) run about 6 higher than the figure numbers, so a proof number cited from this OCR may not match the figure number. Use figure plus page.
- Loomis's notation: right angle at H, hypotenuse AB = h, BH = a, AH = b. Mapped to the brief, that is C = H, c = h.

## Grep/URL log
- GET the archive.org djvu.txt: success.
- Patterns grepped (case-insensitive): inscribed circle, inscri, escribed, exscribed, excircle, tangent, radius of the inscribed, square inscribed, inscribed square, harmonic, pitot, semi-perimeter, incenter, incircle, bisector, trapezoid, "s - a", "(s-", "a + b - h", chord, Ptolemy, Pappus.
- Hits:
  - Tangent method (Fig. 77-85), pp. 74-80.
  - Bisector-of-angle / incircle in Fig. 78 and Fig. 97.
  - "Harmonic Proportion Proof", p. 82.
  - Heron "s - a'" formula, p. 92, Fig. 101.
  - Bauer note, p. 79.
- No hits at all (OCR permitting): escribed, exscribed, excircle, Pitot, incenter, semi-perimeter, inscribed square or "square inscribed in a triangle". No other source was needed.

## Key finding (relevant to C4, C8 and C9)
Loomis **Fig. 84, p. 78-79** ("Hypotenuse and both legs tangents", i.e. the incircle) proves Pythagoras this way:
- Tangent lengths give "(1) h + 2r = a + b", and the area gives "hr + ar + br = ab" (area = ½ r·perimeter).
- Combining them gives 4r(h+r) = 2ab, so (a+b)² = h² + 4hr + 4r² = h² + 2ab, hence h² = a² + b².
- The key line is quoted below. The footnote credits "Dr. L. A. Bauer, Carnegie Institute, May 1891" with a proof "through the equations (1) Area of tri ABH = ½ r (h+a+b), and (2) HD+HE = a+b-h" (pamphlet by Artemus Martin, "On Rational Right-Angled Triangles", 1912), also Am. Math. Monthly V (1901) p. 255, Fourrey p. 94, and "Lucius Brown of Hudson, Mass.".
- So the endpoint identity ab = r(a+b+c) with r = s-c is already published, **using area = r·s**. Candidates C4 and C8 differ only in deriving the same identity **without area** (Pitot or sub-triangle inradii). C9 is the excircle analogue, and no excircle appears in the text.

## Per-candidate: 3 closest Loomis proofs

### C1 (incircle-excircle homothety)
1. **Fig. 78, p. 74-75**. Circle tangent to the hypotenuse and to leg HB at H, centre O on leg AH, "lies on the bisector of angle B". Key lines: "AC = h-a", "(AC=h-a):(AH=b) = (OC=OH=r):(HB=a), whence (h-a)a = br". Mechanism: equal tangent lengths and similar right triangles ACO ~ AHB (tangent-point right triangle with the vertex angle). RELATED. It is one circle, with no excircle and no homothety.
2. **Fig. 84, p. 78-79**. Incircle tangent lengths, "(1) h + 2r = a + b". Mechanism: tangent segments, then area. RELATED.
3. **Fig. 77, p. 74**. Circle centre H tangent to the hypotenuse, with AC·AE = AG·AC giving AC² = b²-r². Mechanism: tangent-secant and similar triangles. RELATED (weak).

Verdict: NOT found. There is no excircle and no pairing of incircle with excircle anywhere in the text.

### C2 (power of the incenter wrt circle on diameter AB)
1. **Fig. 56, p. 62**. Chord AD perpendicular to a diameter at H: "HA × HD = HC × HE, or b² = (h+a)(h-a)". Mechanism: intersecting chords (power of a point H) on a circle centred at B with radius h. RELATED. It is the same power-of-a-point idea, but the point is a vertex-foot rather than I.
2. **Fig. 54, p. 61**. Semicircle on AB, "BH² = AB × BC" (mean proportional). Mechanism: circle on the hypotenuse as diameter, altitude foot. RELATED (weak).
3. **Fig. 69-70, pp. 68-69** (secants). Circle centred H radius HB; "AD : AB = AF : AE". Mechanism: secants, external segments. RELATED.

Verdict: NOT found. No power of I, no chord through the incentre, no xy - r² form.

### C3 (inscribed square, side on hypotenuse)
No Loomis proof inscribes a square in the triangle with a side on the hypotenuse. All squares in the geometric types are constructed on the sides, interior or exterior. The closest:
1. **Fig. 99, p. 90-91**. "CR = h-a, SK = h-b, RS = a+b-h", giving 2(h-a)(h-b) = (a+b-h)². Mechanism: linear-segment identity on the hypotenuse, "a+b-h" being 2r. RELATED (weak; same family of identities).
2. **Fig. 92, p. 85**. Altitude HL splits the triangle into three similar triangles, and areas are compared via squares on the sides. RELATED (weak).
3. **Fig. 98, p. 90**. Segments cut from the hypotenuse of lengths a, b, with corner triangles. RELATED (weak).

Verdict: NOT found.

### C4 (Pitot)
1. **Fig. 84, p. 78-79**. As in the key finding: ab = r(a+b+c) with a+b-c = 2r. Quote: "(10) hr + ar + br = ab". VARIANT of the end identity. It uses area where C4 uses Pitot and similarity.
2. **Bauer note, p. 79**. Area = ½ r(h+a+b), HD+HE = a+b-h. VARIANT.
3. **Fig. 97, p. 89-90**. Bisectors meet at the centre, perpendiculars CR, CX, CT, with tangent lengths x, y, z and "2 tri. ABH = 2xz + 2yz + 2z²". RELATED.

Verdict: the Pitot trapezoid is NOT found. The identity ab = r(a+b+c) is published, with area.

### C5 (harmonic division)
1. **"Harmonic Proportion Proof", p. 82** (printed "Ninety-One"; uses Fig. 87, two circles centred A, B). Quote: "DE : EF = AD : AE". Mechanism: points cut on AB by two circles, giving a ratio of segments. RELATED by name only. It is not the (A, P; I, I_a) range.
2. **Fig. 87, p. 81**. Two circles centred A and B, "CB : HB = HB : BE". Mechanism: power of a point. RELATED (weak).
3. **Fig. 84, p. 78-79**. Incircle (no harmonic content). RELATED (weak).

Verdict: NOT found. No bisector harmonic range and no projection.

### C8 (r + r1 + r2 = h)
1. **Fig. 84, p. 78-79**. Same identity r(a+b+c) = ab via area. VARIANT (same final identity, no sub-triangles).
2. **Fig. 97, p. 89-90**. Tangent lengths x, y, z on the hypotenuse and "2 tri. ABH = 2xz + 2yz + 2z²". RELATED.
3. **Fig. 92, p. 85**. Altitude HL and similar sub-triangles, with areas compared. RELATED (weak).

Verdict: inradii of the altitude sub-triangles are NOT found.

### C9 (A-excircle area decomposition)
1. **Fig. 84 / Bauer note, p. 78-79**. Area = ½ r(h+a+b) (the incircle area decomposition). VARIANT (incircle, not excircle).
2. **Fig. 101, p. 92**. Heron's formula used with s-a', s-b', s-c' on an isosceles triangle with sides h, h, 2a: "h'² = ... 2s × 2(s-a')²(s-b')²(s-c')/4c'²" (OCR garbled), then "b² = h² - a²". RELATED. It uses s-differences and Heron, which is the unfolded form of s(s-a)(s-b)(s-c).
3. **Fig. 97, p. 89-90**. Tangent lengths x = s-a and so on, area = xz + yz + z². RELATED.

Verdict: the excircle decomposition is NOT found.

## Overall
Nothing matches any candidate EXACTLY. Closest to C4, C8 and C9: Fig. 84 and the Bauer 1891 area-incircle proof, which already contain r = s-c, h + 2r = a + b and ab = r(a+b+c). A novelty claim for those must rest on dropping area. Fig. 97 (Smedley, 1901) is the same area-based family.
