module View where

import Prelude hiding(div)

import Data.Foldable (fold)
import Gimel.Attributes (className)
import Gimel.Html (Html, div, style, text)
import Style (stylesheet)
import Types (Event, Model)
-- AlephZero layer
import AlephZero.Header(header)
import AlephZero.Content(content)
import AlephZero.Footer(footer)

view :: Model -> Html Event
view model = fold
    [ div [className "main"]
        [ header model
        , content model
        , footer model
        ]
    , style [] [text $ stylesheet {}]
    ]