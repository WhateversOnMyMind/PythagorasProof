#!/usr/bin/env bash
# Build the project, print the kernel axioms of the main theorem, scan imports, and run the model check.
set -euo pipefail
cd "$(dirname "$0")/.."
lake build
lake env lean scripts/CheckAxioms.lean
! grep -rnE '\bsorry\b|^axiom|\badmit\b' PythagorasProof PythagorasProof.lean
python3 model_check.py
