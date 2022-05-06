import gleam/dynamic
import gleam/io

pub type One {
  One(Two)
}

pub type Two {
  Two
}

pub fn print_info() {
  io.debug(
    "Runtime representations for One(Two); original, from, from/classify:",
  )

  printer(One(Two))
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
