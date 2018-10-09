fun between ((min, max):(int * int)) (value:int) : bool =
  (value >= min) andalso (value <= max)
