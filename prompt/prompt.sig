signature PROMPT =
sig
  type message

  val forInt  : message -> int option
  val forOpt  : message -> string option
  val forStr  : message -> string
  val getDate : message -> Date.date
end
