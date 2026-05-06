# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 164, lane `ship`
- `stress`: `grammar width`, score 201, lane `ship`
- `edge`: `label quality`, score 204, lane `ship`
- `recovery`: `error locality`, score 163, lane `ship`
- `stale`: `token drift`, score 145, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
