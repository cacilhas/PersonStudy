val () =
  ( describe "Person" (fn () =>
    ( describe "with no hometown" (fn () =>
      ( it "should return name" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate NONE
        in
          assertEqual "John Doe" (#name person)
        end)

      ; it "should return birth date" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate NONE
        in
          assertEqual (Date.toTime birthDate)
                      (Date.toTime (Person.birthDate person))
        end)

      ; it "should return no hometown" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate NONE
        in
          assertEqual NONE (Person.hometown person)
        end)

      ; it "should show person" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate NONE
        in
          assertEqual "Here is John Doe, born on 01 January 2012"
                      (Person.show person)
        end)
      ))

    ; describe "with hometown" (fn () =>
      ( it "should return name" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate (SOME "Paris")
        in
          assertEqual "John Doe" (#name person)
        end)

      ; it "should return birth date" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate (SOME "Paris")
        in
          assertEqual (Date.toTime birthDate)
                      (Date.toTime (Person.birthDate person))
        end)

      ; it "should return hometown" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate (SOME "Paris")
        in
          assertEqual (SOME "Paris") (Person.hometown person)
        end)

      ; it "should show person" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val person = Person.new "John Doe" birthDate (SOME "Paris")
        in
          assertEqual "Here is John Doe, born at Paris, on 01 January 2012"
                      (Person.show person)
        end)
      ))
    )
  ))
