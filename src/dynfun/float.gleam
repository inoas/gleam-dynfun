import gleam/dynamic
import gleam/io

pub fn print_info() {
  print_int_1(1)
  print_float_1_dot_0(1.0)
}

pub fn print_int_1(value) {
  io.debug("Runtime representations Int 1; original, from, from/classifid:")

  value
  |> io.debug

  value
  |> dynamic.from
  |> io.debug

  value
  |> dynamic.from
  |> dynamic.classify
  |> io.debug
}

pub fn print_float_1_dot_0(value) {
  io.debug("Runtime representations Float 1.0; original, from, from/classifid:")

  value
  |> io.debug

  value
  |> dynamic.from
  |> io.debug

  value
  |> dynamic.from
  |> dynamic.classify
  |> io.debug
}
