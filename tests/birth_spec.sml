val () =
  describe "Birth" (fn () =>
    ( describe "date" (fn () =>
      ( it "should return date from birth" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val birth = Birth.new birthDate NONE
        in
          assertEqual (Date.toTime birthDate) (Date.toTime (#date birth))
        end)

      ; it "should return date when there is place" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val birth = Birth.new birthDate (SOME "London")
        in
          assertEqual (Date.toTime birthDate) (Date.toTime (#date birth))
        end)
      ))

    ; describe "place" (fn () =>
      ( it "should support no place" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val birth = Birth.new birthDate NONE
        in
          assertEqual NONE (#place birth)
        end)

      ; it "should return place" (fn () =>
        let
          val birthDate = Date.fromTimeLocal
                            (valOf (Time.fromString "1325383200"))
          val birth = Birth.new birthDate (SOME "London")
        in
          assertEqual (SOME "London") (#place birth)
        end)
      ))
    )
  )
