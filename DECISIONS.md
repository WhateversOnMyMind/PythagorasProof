# Decisions made without the user

Each entry: what was ambiguous, what I chose, and why.

1. **Branch.** The repository was empty, so I work on `claude/bold-fermat-l2j0j4` and push there.
2. **Stage 0 sources.** cut-the-knot was read from its index page only, summarised by a fetch model and not opened page by page. Loomis was read from the ERIC/archive.org OCR, which is noisy. The Jackson–Johnson Monthly paper had no open copy (Unpaywall lists only the publisher PDF, which returned 403), so its proofs are taken from Shene's 2025 reconstruction. These limits are logged in `research/stage0/`.
3. **Unpaywall email.** The API rejects `test@example.com`. Agents used the generic `test@example.org`. No personal address was ever sent.
4. **Lean toolchain.** I installed elan and used Mathlib's pinned toolchain. Mathlib is used **only** for the real numbers and for algebra tactics (`ring`, `nlinarith`, `field_simp`, `linarith`). Nothing from `Mathlib.Geometry.Euclidean`, `InnerProductSpace` or `EuclideanSpace` is imported; the build checks this.
