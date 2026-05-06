# silver-parse-regex-stack

`silver-parse-regex-stack` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for regex simulation kernel, using seeded input scenarios and deterministic summary checks.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Silver Parse Regex Stack Review Notes

For a quick review, compare `label quality` with `token drift` before reading the middle cases.

## What It Does

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/silver-parse-regex-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `label quality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The Ruby implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
