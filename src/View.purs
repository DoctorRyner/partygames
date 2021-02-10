module View where

import Prelude hiding (div)

--AlephZero layer
import AlephZero.Content (content)
import AlephZero.Footer (footer)
import AlephZero.Header (header)

import Component.Lobby (lobby)

import Data.Array (singleton)
import Data.Foldable (fold)
-- Gimel modules
import Gimel.Attributes (className)
import Gimel.Html (Html, div, style, text)
import Gimel.Router (browserRouter, exact, path, route, switch)
-- Project modules
import Style (stylesheet)
import Types (Event, Model)

view :: Model -> Html Event
view model = fold
    [ style [] [text $ stylesheet {}]
    , router
    ] where
        router = browserRouter [] $ singleton $ switch []
            [ route [exact true, path "/"]
                [ div [className "main"]
                    [ header model
                    , content model
                    , footer model
                    ]
                ]
            , route [path "/lobby"] [lobby model]
            , route [] [text "NotFound 404"]
            ]