val () =
    let
      val name   = Prompt.forStr "What’s your name?"
      val place  = Prompt.forOpt "Where were you born?"
      val date   = Prompt.getDate "What’s your birth date?"
      val person = Person.new name date place
    in
      print (Person.show person)
      before print "\n"
    end
