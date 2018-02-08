module Show
    exposing
        ( int
        , float
        )

{-| A module that provides type-safe ways to convert primitive types to `String`.

@docs int
@docs float

-}


{-|

    int 3
    --> "3"

    int -4
    --> "-4"
-}
int : Int -> String
int =
    toString


{-|

    float Nothing 123.456
    --> "123.456"

    float (Just 1) 123.456
    --> "123.4"

    float (Just 2) 123.456
    --> "123.45"

    float (Just 3) 123.456
    --> "123.456"

    float (Just 4) 123.456
    --> "123.456"
-}
float : Maybe Int -> Float -> String
float mn x =
    toString <|
        case mn of
            Nothing ->
                x

            Just n ->
                let
                    order : Float
                    order = 10 ^ toFloat n
                in
                    (toFloat <| floor <| x * order) / order
