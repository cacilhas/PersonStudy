# PersonStudy

This is a simple ML study. It explores concepts like signature, structure, type
aliases, and template matching.

## `Person` structure

The `Person` structure is the main one. Its API has three functions:

- `Person.new : string -> Person.date -> Person.place -> Person.person` builds and return a person
- `Person.birthDate : Person.person -> Person.date` returns the person’s birth date
- `Person.hometown : Person.person -> Person.place` returns the person’s hometown
- `Person.show : Person.person -> string` serialises the person for show

The type aliases are:

- `Person.date`: the same `Birth.date` – `Date.date` from basis
- `Person.place`: the same `Birth.place` – string option
- `Person.person`: a hash containing the keys `name` (string) and `birth` (`Birth.birth`)

The `Person` structure depends on the `Birth` structure.

## `Birth` structure

The `Birth` structure manage birth date and place. Its API has two functions:

- `Birth.new : Birth.date -> Birth.place -> Birth.birth` builds and return a birth
- `Birth.show : Birth.birth -> string` serialises the birth for show

The type aliases are:

- `Birth.date`: `Date.date` from basis
- `Birth.place`: string option
- `Birth.birth`: a hash containing the keys `date` (`Birth.date`) and `place` (`Birth.place`)

## `Prompt` structure

The `Prompt` structure offers helpers to request informations from standard
input.

- `Prompt.forInt : Prompt.message -> int option` requests an integer
- `Prompt.forOpt : Prompt.message -> string option` requests a string
- `Prompt.forStr : Prompt.message -> string` requests a straight string
- `Prompt.getDate : Prompt.message -> Date.date` requests a date

`forInt` and `forOpt` return `NONE` when the supplied value is invalid.

The type alias `Prompt.message` is string.
