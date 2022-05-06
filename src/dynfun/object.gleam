import dynfun/printer

pub type One {
  One(Two)
}

pub type Two {
  Two
}

pub fn print_info() {
  printer.print(
    One(Two),
    "Runtime representations for One(Two); original, from, from/classify:",
  )
}
