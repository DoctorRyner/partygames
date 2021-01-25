module View where

import Prelude hiding (div)

import AlephZero.Content (content)
import AlephZero.Footer (footer)
import AlephZero.Header (header)
import Data.Array (singleton)
import Data.Foldable (fold)
import Gimel.Attributes (className)
import Gimel.Html (Html, div, style, text)
import Gimel.Router (browserRouter, exact, path, route, switch)
import Style (stylesheet)
import Types (Event, Model)

view :: Model -> Html Event
view model = fold
    [ div [className "main"]
        [ header model
        , content model
        , footer model
        ]
    , style [] [text $ stylesheet {}]
    , router
    ] where
        router = browserRouter [] $ singleton $ switch []
            [ route [exact true, path "/"] [text "root"]
            , route [path "/test"] [text "test"]
            , route [] [text "NotFound 404"]
            ]