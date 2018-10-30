structure Person : PERSON =
struct
  type date = Birth.date
  type place = Birth.place
  type person = {name: string, birth: Birth.birth}

  fun new name date place = {name = name, birth = Birth.new date place}

  fun birthDate {name = _, birth = {date = date, place = _}} = date

  fun hometown {name = _, birth = {date = _, place = place}} = place

  fun show {name = name, birth = birth} =
    "Here is " ^ name ^ ", " ^ (Birth.show birth)
end
