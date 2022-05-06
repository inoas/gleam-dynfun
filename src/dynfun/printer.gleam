import gleam/dynamic
import gleam/io
import gleam/string_builder
import gleam/function

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

pub fn print_new(value, message) {
  string_builder.new()
  |> string_builder.append(message)
  |> string_builder.append("\n")
  |> string_builder.append("value: ")
  |> string_builder.append("\n")
  |> string_builder.append("dynamic.from: ")
  |> string_builder.append({
    assert Ok(string) =
      value
      |> dynamic.from
      |> dynamic.string
    string
  })
  |> string_builder.append("\n")
  |> string_builder.append("dynamic.from/.classify: ")
  |> string_builder.to_string()
  |> io.debug()

  Nil
}
