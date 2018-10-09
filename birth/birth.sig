signature BIRTH =
sig
  type date
  type place
  type birth

  val new  : date -> place -> birth
  val show : birth -> string
end
