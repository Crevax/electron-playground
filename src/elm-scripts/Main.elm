module Hello exposing (..)

import Html exposing (Html, div, h1, text)


main : Html a
main =
    view


view : Html a
view =
    div []
        [ h1 [] [ text "Hello World!" ]
        , text "We are using node x, "
        , text "Chrome y, "
        , text "and Electron z."
        ]
