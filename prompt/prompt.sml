structure Prompt : PROMPT =
struct
  type message = string

  fun forStr message =
    valOf ( print (message ^ " ")
          ; TextIO.inputLine TextIO.stdIn
          )
    |> trim

  val forInt = Int.fromString o forStr

  fun forOpt message =
    case forStr message of
        ""    => NONE
      | value => SOME value

  fun getDate message =
    let
      val () = print (message ^ "\n")
      val year =
        case forInt "Year?" of
            SOME value => value
          | NONE       => invalid "year"
      val month =
        case forInt "Month?" of
            SOME  1 => Date.Jan
          | SOME  2 => Date.Feb
          | SOME  3 => Date.Mar
          | SOME  4 => Date.Apr
          | SOME  5 => Date.May
          | SOME  6 => Date.Jun
          | SOME  7 => Date.Jul
          | SOME  8 => Date.Aug
          | SOME  9 => Date.Sep
          | SOME 10 => Date.Oct
          | SOME 11 => Date.Nov
          | SOME 12 => Date.Dec
          | _       => invalid "month"
      val day =
        case forInt "Day?" of
            SOME value => value
              before (if (between (1, 31) value) then ()
                                                 else invalid "day")
          | NONE       => invalid "day"
    in
      Date.date
        { year   = year
        , month  = month
        , day    = day
        , hour   = 0
        , minute = 0
        , second = 0
        , offset = NONE
        }
    end
end
