# ocamlpolicy

`ocamlpolicy` explores platform engineering with a small OCaml codebase and local fixtures. The technical goal is to evaluate infrastructure policy rules against typed resource fixtures.

## Why This Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how rollout width and route drift should influence a review result.

## Ocamlpolicy Review Notes

The first comparison I would make is `route drift` against `rollout width` because it shows where the rule is most opinionated.

## Capabilities

- `fixtures/domain_review.csv` adds cases for rollout width and quota pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ocamlpolicy-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `route drift` and `rollout width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
