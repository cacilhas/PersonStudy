signature PERSON =
sig
  type date
  type place
  type person

  val new       : string -> date -> place -> person
  val birthDate : person -> date
  val hometown  : person -> place
  val show      : person -> string
end
