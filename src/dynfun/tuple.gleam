import gleam/dynamic
import gleam/io

pub type LikeOne {
  One
  Two
}

pub type LikeTwo {
  LikeTwo(LikeOne)
}

pub fn print_info() {
  io.debug(
    "Runtime representations for #(One, Two); original, from, from/classify:",
  )

  printer(#(One, Two))
}

pub fn printer(value) {
  value
  |> io.debug

  value
  |> dynamic.from
  |> io.debug

  value
  |> dynamic.from
  |> dynamic.classify
  |> io.debug

  Nil
}
