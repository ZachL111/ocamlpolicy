# Ocamlpolicy Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | rollout width | 114 | watch |
| stress | quota pressure | 119 | watch |
| edge | route drift | 182 | ship |
| recovery | secret scope | 155 | ship |
| stale | rollout width | 164 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around quota pressure and secret scope.
