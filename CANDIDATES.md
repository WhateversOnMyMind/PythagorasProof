# Candidates

Notation: right angle at $C$; $a=BC$, $b=CA$, $c=AB$; $s=\frac{a+b+c}2$.
The incircle (centre $I$, radius $r$) touches $BC, CA, AB$ at $D, E, F$.
The $A$-excircle (centre $I_a$, radius $r_a$) touches line $BC$ at $D'$, line $CA$ at $E'$
and line $AB$ at $F'$. The hypotenuse tangent segments are $x=AF=s-a$ and $y=BF=s-b$.
$\Gamma$ is the circle on diameter $AB$, with centre $O$.

Two facts recur. They use only congruence and are therefore allowed:

- **(T) Equal tangents.** $AE=AF=s-a$, $BD=BF=s-b$, $CD=CE=s-c$. For the
  $A$-excircle: $AE'=AF'=s$, $CE'=CD'=s-b$, $BD'=BF'=s-c$.
  Each pair of tangents is equal because the two right triangles are congruent (HL);
  the explicit values follow by adding segments.
- **(Q) The right angle makes squares.** $CEID$ has right angles at $C$, $E$ and $D$,
  and $CE=CD$, so it is a square and $r=s-c$. The quadrilateral $CD'I_aE'$ has right
  angles at $D'$ and $E'$, and at $C$ (the angle between ray $CB$ and the ray opposite
  $CA$), and $CD'=CE'$, so it is a square and $r_a=s-b$.

Throughout we use the purely algebraic equivalence (★):
$$(s-a)(s-b)=s(s-c)\iff xy=r(x+y+r)\iff 2ab=(a+b)^2-c^2\iff a^2+b^2=c^2,$$
where $a=y+r$, $b=x+r$, $c=x+y$.

---

## Round 1 (stage 1 ideation, stage 2 circularity audit)

### C1. Incircle–excircle homothety at $A$
- **Gap targeted:** excircles used with similarity instead of area or Heron.
- **Proof:** $I$ and $I_a$ both lie on the bisector of angle $A$. The right triangles
  $AEI$ and $AE'I_a$ (right angles at $E$ and $E'$) share the angle $\frac A2$, so they
  are similar, which gives $\frac{EI}{AE}=\frac{E'I_a}{AE'}$. By (T) and (Q) this reads
  $\frac{s-c}{s-a}=\frac{s-b}{s}$. Cross-multiplying gives (★).
- **Lemmas:** (T), equal-tangent congruence (HL); (Q), rectangle with equal adjacent
  sides; the incircle and excircle exist (concurrency of bisectors); AA similarity of
  right triangles; segment addition.
- **Audit:** PASS. No distance formula, area, trigonometric identity, norm or law of
  cosines is used.

### C2. Power of the incentre with respect to the Thales circle
- **Gap targeted:** power of a point taken at the incentre, which no known proof uses.
- **Proof:** $C\in\Gamma$ (Thales). Compute the power of $I$ along two chords.
  1. **Chord $\ell_1$:** the line $IE$, which is perpendicular to $CA$. $E$ lies on chord
     $CA$, so $EV\cdot EV'=EC\cdot EA=rx$ (intersecting chords). The midpoint $N$ of
     $VV'$ is the foot of the perpendicular from $O$, and $EN=\frac a2$ (midline
     theorem). Since $IE=r$:
     $$IV\cdot IV'=(EV-r)(EV'+r)=rx+r(EV-EV')-r^2=rx+ra-r^2=rc.$$
  2. **Chord $\ell_2$:** the line $IF$, which is perpendicular to the diameter $AB$, so
     $FU=FU'$, and $FU^2=FA\cdot FB=xy$. Since $IF=r$:
     $$IU\cdot IU'=(FU-r)(FU+r)=xy-r^2.$$
  3. By intersecting chords at $I$, $rc=xy-r^2$, which is (★).
- **Lemmas:** Thales' converse; intersecting chords (three times); a diameter
  perpendicular to a chord bisects it, and the perpendicular from the centre bisects a
  chord (congruence); midline theorem; (T); (Q).
- **Audit:** PASS. "Power of a point" is used only as the equality of chord products,
  never as $d^2-R^2$.

### C3. Inscribed square on the hypotenuse
- **Gap targeted:** similar triangles produced by an inscribed square instead of the
  altitude.
- **Proof:** Let the square $PQTS$ have $S,T$ on $AB$, $P$ on $CA$ and $Q$ on $CB$, with
  side $t$. The three corner triangles $CPQ$, $ASP$ and $BTQ$ are each similar to $ABC$
  (by AA, using parallels and right angles).
  - Along $AB$: $\frac{bt}a+t+\frac{at}b=c$.
  - Along $CA$: $\frac{bt}c+\frac{ct}a=b$.
  - Eliminating $t$ gives $c^2+ab=a^2+ab+b^2$.
- **Lemmas:** existence of the inscribed square; AA similarity; segment addition.
- **Audit:** PASS.
- **Warning for stage 4:** the same argument with a rectangle in place of the square is
  a one-parameter family, and its degenerate member (zero width) is exactly the
  altitude proof A1.

### C4. Pitot's theorem on a tangential right trapezoid
- **Gap targeted:** Pitot's theorem, not found in the taxonomy.
- **Proof:** The tangent to the incircle parallel to $CA$, the one at distance $2r$
  from $CA$, meets $CB$ at $Q$ with $CQ=2r$ and meets $AB$ at $P$. The quadrilateral $CAPQ$ is tangential.
  - Pitot: $CA+PQ=AP+QC$.
  - Triangle $BQP\sim BCA$ with ratio $\frac{a-2r}a$, so $PQ=\frac{b(a-2r)}a$ and
    $AP=\frac{2rc}a$.
  - Substituting gives $ab=r(a+b+c)$, that is $\frac12ab=rs$ **without using area**.
  - With $r=s-c$ this is (★).
- **Lemmas:** Pitot's theorem (from (T)); AA similarity; (Q).
- **Audit:** PASS.

### C5. Harmonic division of the bisector by $I$ and $I_a$
- **Gap targeted:** projective (harmonic) division.
- **Proof:** Let $AP$ be the bisector from $A$, with $P$ on $BC$. In triangle $ABP$, $BI$
  and $BI_a$ are the internal and external bisectors at $B$. By the angle-bisector
  theorem applied twice, $\frac{AI}{IP}=\frac{AB}{BP}=\frac{AI_a}{I_aP}$, so
  $(A,P;I,I_a)$ is harmonic. Project parallel to $CB$ onto line $CA$; this preserves
  ratios (intercept theorem). The images are $A\mapsto b$, $P\mapsto 0$, $I\mapsto r$
  and $I_a\mapsto -r_a$, by (Q). Harmonicity then reads $\frac{b-r}{r}=\frac{b+r_a}{r_a}$,
  so $b(r_a-r)=2rr_a$, which is (★) after substituting (Q).
- **Lemmas:** internal and external angle-bisector theorems; intercept theorem; (T); (Q).
- **Audit:** PASS.

### C6. Radical axis of the incircle and the $A$-excircle
- **Gap targeted:** radical axes, through midpoints of common tangents.
- **Proof:** The radical axis bisects every common tangent segment. On $BC$ it passes
  through the midpoint $M_a$ of $DD'$, which is the midpoint of $BC$. On $CA$ it passes
  through the midpoint of $EE'$, at distance $\frac{b+c}2$ from $A$, that is at distance
  $\frac{c-b}2$ beyond $C$. It is perpendicular to the line of centres $AI$. The right
  triangle formed with $C$ (legs $\frac{c-b}2$ and $\frac a2$) is similar to triangle
  $ACP$ (legs $b$ and $CP=\frac{ab}{b+c}$, by the bisector theorem), so
  $\frac{c-b}{a}=\frac{a}{b+c}$.
- **Lemmas:** the radical axis exists and is perpendicular to the line of centres, and
  midpoints of common tangents lie on it. **The standard proof of this uses
  $\mathrm{pow}(X)=XO^2-R^2$, or equal tangent lengths $XT^2$ = power, and the existence
  of the radical axis as a line needs $d^2-R^2$ (Pythagoras).**
- **Audit:** FAIL as stated, REJECTED-CIRCULAR. A non-circular variant would assert only
  "the line through the two midpoints" and then prove its perpendicularity to $AI$
  separately, but that perpendicularity is the radical-axis content. Rejected.

### C7. Averaging squared projections over all directions
- **Gap targeted:** measure, averaging and integral-geometry arguments.
- **Proof:** For a segment of length $L$ at angle $\varphi$, its signed projection on
  direction $\theta$ is $L f(\theta-\varphi)$ (similarity). By vector additivity,
  $\mathrm{proj}(AB)=\mathrm{proj}(AC)+\mathrm{proj}(CB)$. Square this and average over
  $\theta$ with the uniform angular measure. The cross term vanishes, because a
  reflection symmetry makes its integrand odd. This leaves $\kappa c^2=\kappa a^2+\kappa b^2$.
- **Audit:** non-circular, but **REJECTED-WRAPPER**. Evaluating the same projection
  identity at the single direction $\theta=\varphi_{AB}$ gives $c=\frac{b^2}{c}+\frac{a^2}{c}$,
  which is the altitude proof A1/A4. The averaging is decoration on A1.

### C8. Inradii of the altitude sub-triangles: $r+r_1+r_2=h$
- **Gap targeted:** tangent lengths in the altitude figure.
- **Proof:** Let $r_1, r_2$ be the inradii of $ACH$ and $BCH$. Applying (Q) to each right
  triangle gives $r+r_1+r_2=h$ (the $p$ and $q$ terms cancel because $p+q=c$). By
  similarity, $r_1=\frac{rb}c$ and $r_2=\frac{ra}c$, and $h=\frac{ab}c$. Hence
  $r(a+b+c)=ab$, which is (★).
- **Lemmas:** (T); (Q) three times; AA similarity (altitude); segment addition.
- **Audit:** PASS. Note for stage 4: it uses the altitude similar triangles.

### C9. $A$-excircle area decomposition
- **Gap targeted:** excircles with area, as a counterpart of E1.
- **Proof:** $[ABC]=[I_aAB]+[I_aAC]-[I_aBC]=\frac{r_a}{2}(c+b-a)=r_a(s-a)$. With
  $r_a=s-b$ from (Q), the area is $(s-a)(s-b)=\frac12ab$, which is (★).
- **Lemmas:** area additivity; area of a triangle $=\frac12$ base × height; (T); (Q).
- **Audit:** PASS.

Going to stage 3 (search): C1, C2, C3, C4, C5, C8, C9.
Rejected at stage 2: C6 (circular), C7 (wrapper).
