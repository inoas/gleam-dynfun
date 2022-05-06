# dynfun

This gleam module shows two shortcomings of each underlying VM:

1. Javascript's Number type means it cannot differentiate between `1.0` and `1`.
2. Underlying interpretation of Tuples and Objects cannot be differentiated on target Erlang.

## Quick start

```sh
gleam run --target javascript && gleam run --target erlang
```
