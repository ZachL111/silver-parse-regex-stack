# Silver Parse Regex Stack Walkthrough

This note is the quickest way to read the extra review model in `silver-parse-regex-stack`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 164 | ship |
| stress | grammar width | 201 | ship |
| edge | label quality | 204 | ship |
| recovery | error locality | 163 | ship |
| stale | token drift | 145 | ship |

Start with `edge` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `label quality` against `token drift`, not the raw score alone.
