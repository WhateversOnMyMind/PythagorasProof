# Lean formalization (candidate C1)

- `PythagorasProof/Axioms.lean`: the minimal Birkhoff-style axiom system, written as the class `Synthetic.Plane`.
- `PythagorasProof/Lemmas.lean`: the audit lemmas L1–L4.
- `PythagorasProof/Main.lean`: the algebraic core and `Synthetic.pythagoras`.
- `scripts/check.sh`: builds the project, prints the main theorem's kernel axioms, scans the imports, greps for `sorry`, and runs `model_check.py`.

Requirements: elan, then `lake exe cache get && ./scripts/check.sh`.
