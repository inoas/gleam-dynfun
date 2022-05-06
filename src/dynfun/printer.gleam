import gleam/dynamic
import gleam/io

pub fn print(value, message) {
  io.debug(message)

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
