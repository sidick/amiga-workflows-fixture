# amiga-workflows-fixture

Throwaway fixture validating [`sidick/amiga-workflows`](https://github.com/sidick/amiga-workflows)'
`build-test.yml`: a minimal Makefile implementing the verb contract, just
non-trivial enough to prove the reusable workflow's calling mechanics
(container access, checkout, secrets plumbing) actually work end-to-end in
real CI — not a real Amiga project. See `docs/phase0-decisions.md` in
`sidick/amiga-dev` for the context this exists to validate.
