module Hello exposing (..)

import Html exposing (Html, div, h1, text)
import Html.App as App


main : Program Flags
main =
    App.programWithFlags
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }


type alias Flags =
    { chrome : String
    , node : String
    , electron : String
    }


type alias Model =
    { versions :
        { chrome : String
        , node : String
        , electron : String
        }
    }


type Msg
    = NoOp


init : Flags -> ( Model, Cmd msg )
init flags =
    ( { versions =
            { chrome = toString flags.chrome
            , node = toString flags.node
            , electron = toString flags.electron
            }
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html a
view model =
    div []
        [ h1 [] [ text "Hello World!" ]
        , text "We are using node "
        , text (model.versions.node)
        , text ", Chrome "
        , text (model.versions.chrome)
        , text ", and Electron "
        , text (model.versions.electron)
        ]
