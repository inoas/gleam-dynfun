import dynfun/printer

pub type LikeOne {
  One
  Two
}

pub type LikeTwo {
  LikeTwo(LikeOne)
}

pub fn print_info() {
  printer.print(
    #(One, Two),
    "Runtime representations for #(One, Two); original, from, from/classify:",
  )
}
