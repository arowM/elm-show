module ShowSpec exposing (..)

import Expect exposing (Expectation)
import Fuzz as Fuzz exposing (Fuzzer, intRange, float)
import Show
import Test exposing (..)


suite : Test
suite =
    describe "The Show module"
        [ describe "Show.float"
            [ fuzz (Fuzz.tuple (intRange 0 100, float)) "has proper number of decimal places" <|
                \( int, float ) ->
                    Show.float (Just int) float
                        |> lenDecimalPlaces
                        |> Expect.atMost int
            ]
        ]


lenDecimalPlaces : String -> Int
lenDecimalPlaces str =
    case String.split "." str of
        (_ :: n :: _) ->
            String.length n

        _ ->
            0
