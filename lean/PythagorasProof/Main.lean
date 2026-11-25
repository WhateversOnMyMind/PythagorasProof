/-
  Main theorem: the Pythagorean theorem, via the homothety centred at A
  between the incircle and the A-excircle (candidate C1).

  Proof outline (right angle at C; a = BC, b = CA, c = AB):
  1. Equal tangents give AE = s - a, CE = s - c, CE' = s - b and AE' = s.
  2. The right angle makes squares at C, so r = s - c and r_a = s - b.
  3. Both centres lie on the bisector of A, so ∠EAI = ∠E'AJ.
  4. AA similarity gives r · AE' = r_a · AE, that is (s-c)s = (s-b)(s-a).
  5. Algebra then gives c² = a² + b².
-/
import PythagorasProof.Lemmas
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

namespace Synthetic

open Plane

variable {P : Type*} [Plane P]

/-- Algebraic core (★): for a = y + r, b = x + r and c = x + y, the identity
(s-a)(s-b) = s(s-c) is equivalent to c² = a² + b². Here only the direction we
need is proved, stated in terms of the tangent lengths. -/
theorem core_algebra {a b c tA tB tC u : ℝ}
    (h1 : tC + tA = b) (h2 : tC + tB = a) (h3 : tA + tB = c)
    (h4 : b + u = c + a - u) (hsim : tC * (b + u) = u * tA) :
    c ^ 2 = a ^ 2 + b ^ 2 := by
  have etA : tA = (b + c - a) / 2 := by linarith
  have etC : tC = (a + b - c) / 2 := by linarith
  have eu : u = (a + c - b) / 2 := by linarith
  subst etA etC eu
  linear_combination (-2 : ℝ) * hsim

/-- **Pythagorean theorem** (synthetic, via the incircle–excircle homothety). -/
theorem pythagoras {A B C : P} (hC : ang A C B = 90) :
    dist A B ^ 2 = dist B C ^ 2 + dist C A ^ 2 := by
  obtain ⟨I, D, E, F, X, hD, hE, hF, hID_B, hID_C, hIE_C, hIE_A, hIF_A, hIF_B,
    hr1, hr2, hXbc, hAIX⟩ := incircle hC
  obtain ⟨J, D', E', F', Y, hD', hE', hF', hJD_B, hJD_C, hJE_C, hJE_A, hJF_A, hJF_B,
    hs1, hs2, hYbc, hAYJ⟩ := excircle hC
  -- distinctness facts
  have hAB : A ≠ B := (bet_ne hF).2.2
  have hAC : A ≠ C := (bet_ne hE).2.2.symm
  have hAX : A ≠ X := (bet_ne hAIX).2.2
  have hAY : A ≠ Y := (bet_ne hAYJ).1
  ------------------------------------------------------------------
  -- Step 1: tangent lengths for the incircle
  ------------------------------------------------------------------
  have tA : dist A E = dist A F := (equal_tangents hIE_A hIF_A hr2).1
  have tB : dist B D = dist B F :=
    (equal_tangents hID_B hIF_B (hr1.trans hr2)).1
  have tC : dist C D = dist C E := (equal_tangents hID_C hIE_C hr1).1
  have sCA : dist C E + dist E A = dist C A := bet_add hE
  have sBC : dist B D + dist D C = dist B C := bet_add hD
  have sAB : dist A F + dist F B = dist A B := bet_add hF
  ------------------------------------------------------------------
  -- Step 1': tangent lengths for the A-excircle
  ------------------------------------------------------------------
  have uA : dist A E' = dist A F' := (equal_tangents hJE_A hJF_A hs2).1
  have uB : dist B D' = dist B F' :=
    (equal_tangents hJD_B hJF_B (hs1.trans hs2)).1
  have uC : dist C D' = dist C E' := (equal_tangents hJD_C hJE_C hs1).1
  have sAE' : dist A C + dist C E' = dist A E' := bet_add hE'
  have sAF' : dist A B + dist B F' = dist A F' := bet_add hF'
  have sBC' : dist B D' + dist D' C = dist B C := bet_add hD'
  ------------------------------------------------------------------
  -- Step 2: squares at C (radius = tangent length from C)
  ------------------------------------------------------------------
  have sqI : dist E I = dist C E :=
    square_at_vertex (incircle_corner_right hC hD hE) hIE_C hID_C hr1
  have sqJ : dist E' J = dist C E' :=
    square_at_vertex (excircle_corner_right hC hD' hE') hJE_C hJD_C hs1
  ------------------------------------------------------------------
  -- Step 3: both centres lie on the bisector of angle A
  ------------------------------------------------------------------
  have hI : 2 * ang E A I = ang B A C :=
    half_angle hIE_A hIF_A hr2
      (ang_ray (bet_symm hE)) (ang_ray hF)
      hXbc hAB hAC hAX
      (ang_ray hAIX).symm (ang_ray hAIX).symm
  have hJ : 2 * ang E' A J = ang B A C :=
    half_angle hJE_A hJF_A hs2
      (ang_ray hE').symm (ang_ray hF').symm
      hYbc hAB hAC hAY
      (ang_ray hAYJ) (ang_ray hAYJ)
  have hAng : ang E A I = ang E' A J := by linarith
  ------------------------------------------------------------------
  -- Step 4: the homothety (AA similarity) at A
  ------------------------------------------------------------------
  have hom : dist E I * dist A E' = dist E' J * dist A E :=
    homothety_ratio hIE_A hJE_A hAng
  ------------------------------------------------------------------
  -- Step 5: algebra
  ------------------------------------------------------------------
  rw [sqI, sqJ] at hom
  have e1 : dist C E + dist A E = dist C A := by rw [dist_comm A E]; exact sCA
  have e2 : dist C E + dist B D = dist B C := by
    rw [← tC, dist_comm C D]; linarith
  have e3 : dist A E + dist B D = dist A B := by
    rw [tA, tB, dist_comm B F]; exact sAB
  have e4 : dist C A + dist C E' = dist A B + dist B C - dist C E' := by
    have := uB; rw [dist_comm D' C, uC] at sBC'
    rw [dist_comm C A]; linarith
  rw [← sAE', dist_comm A C] at hom
  exact core_algebra e1 e2 e3 e4 hom

end Synthetic
