/-
  The lemmas from the circularity audit of candidate C1, each proved
  separately from the axioms in `Axioms.lean`.
-/
import PythagorasProof.Axioms
import Mathlib.Tactic.Linarith

namespace Synthetic

open Plane

variable {P : Type*} [Plane P]

/-! ### Lemma 1 — equal tangents (from HL congruence)

Let I be the centre of a circle tangent at E and F to two lines through A
(IE ⊥ AE, IF ⊥ AF, IE = IF). Then the tangent segments are equal, and AI makes
equal angles with them. -/
theorem equal_tangents {A E F I : P} (hE : ang I E A = 90) (hF : ang I F A = 90)
    (hr : dist I E = dist I F) :
    dist A E = dist A F ∧ ang E A I = ang F A I := by
  have hE' : ang A E I = 90 := by rw [ang_comm]; exact hE
  have hF' : ang A F I = 90 := by rw [ang_comm]; exact hF
  have hr' : dist E I = dist F I := by rw [dist_comm E I, dist_comm F I]; exact hr
  exact hl hE' hF' rfl hr'

/-! ### Lemma 2 — the right angle turns a tangent quadrilateral at C into a square

Assume a circle with centre I is tangent to line CA at E and to line CB at D, and that
the angle ECD is right. Then the radius equals the tangent length from C:
IE = CE. -/
theorem square_at_vertex {C E D I : P} (hC : ang E C D = 90)
    (hE : ang I E C = 90) (hD : ang I D C = 90) (hr : dist I D = dist I E) :
    dist E I = dist C E := by
  have hE' : ang C E I = 90 := by rw [ang_comm]; exact hE
  have hD' : ang C D I = 90 := by rw [ang_comm]; exact hD
  have h1 : dist E I = dist C D := rect hC hE' hD'
  -- tangents from C are equal
  have h2 : dist C D = dist C E := (equal_tangents hD hE hr).1
  rw [h1, h2]

/-- For the incircle, the angle at C between the two tangency points is the
right angle of the triangle, because E is on ray CA and D is on ray CB. -/
theorem incircle_corner_right {A B C D E : P} (hC : ang A C B = 90)
    (hD : Bet B D C) (hE : Bet C E A) : ang E C D = 90 := by
  have h1 : ang E C D = ang E C B := ang_ray (bet_symm hD)
  have h2 : ang B C E = ang B C A := ang_ray hE
  rw [h1, ang_comm, h2, ang_comm]; exact hC

/-- For the A-excircle, E' is on line CA beyond C and D' is on ray CB. The angle
E'CD' is then the supplement of the right angle ACB, so it is right too. -/
theorem excircle_corner_right {A B C D' E' : P} (hC : ang A C B = 90)
    (hD : Bet B D' C) (hE : Bet A C E') : ang E' C D' = 90 := by
  have hDC : D' ≠ C := (bet_ne hD).2.1
  have hlin : ang A C D' + ang D' C E' = 180 := ang_linear hE hDC
  have hray : ang A C D' = ang A C B := ang_ray (bet_symm hD)
  rw [hray, hC] at hlin
  rw [ang_comm]; linarith

/-! ### Lemma 3 — the centre of a circle tangent to both sides of angle A lies on its bisector

Let a circle with centre K be tangent to the rays AC and AB, at points T on ray AC and
U on ray AB. Let segment AK (or its extension through K) meet segment BC. Then
∠TAK is half of ∠BAC. -/
theorem half_angle {A B C K T U X : P}
    (hT : ang K T A = 90) (hU : ang K U A = 90) (hr : dist K T = dist K U)
    (hTray : ang K A T = ang K A C) (hUray : ang K A U = ang K A B)
    (hX : Bet B X C) (hAB : A ≠ B) (hAC : A ≠ C) (hAX : A ≠ X)
    (hXray : ang B A X = ang B A K) (hXray' : ang C A X = ang C A K) :
    2 * ang T A K = ang B A C := by
  have heq : ang T A K = ang U A K := (equal_tangents hT hU hr).2
  have hadd : ang B A X + ang X A C = ang B A C := ang_add hX hAB hAC hAX
  have e1 : ang T A K = ang K A C := by rw [ang_comm]; exact hTray
  have e2 : ang U A K = ang K A B := by rw [ang_comm]; exact hUray
  have e3 : ang X A C = ang C A K := by rw [ang_comm]; exact hXray'
  have e4 : ang B A K = ang K A B := ang_comm _ _ _
  have e5 : ang C A K = ang K A C := ang_comm _ _ _
  linarith

/-! ### Lemma 4 — the incircle–excircle homothety at A (AA similarity)

Right triangles A-E-I and A-E'-J with equal angles at A satisfy
EI · AE' = E'J · AE. -/
theorem homothety_ratio {A E I E' J : P} (hE : ang I E A = 90) (hE' : ang J E' A = 90)
    (hA : ang E A I = ang E' A J) :
    dist E I * dist A E' = dist E' J * dist A E := by
  have h1 : ang A E I = 90 := by rw [ang_comm]; exact hE
  have h2 : ang A E' J = 90 := by rw [ang_comm]; exact hE'
  exact sim h1 h2 hA

end Synthetic
