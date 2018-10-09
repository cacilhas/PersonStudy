structure Birth : BIRTH =
struct
  type date  = Date.date
  type place = string option
  type birth = {date: date, place: place}

  fun new date place = {date = date, place = place}

  fun show {date = date, place = NONE} =
    "born on " ^ (Date.fmt "%d %B %Y" date)

    | show {date = date, place = SOME place} =
    "born at " ^ place ^ " on " ^ (Date.fmt "%d %B %Y" date)
end
