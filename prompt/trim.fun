local
  val stripl = Substring.dropl Char.isSpace
  val stripr = Substring.dropr Char.isSpace
  val strip  = stripl o stripr
in
  fun trim s = Substring.full s |> strip |> Substring.string
end
