module View where

import Prelude hiding(div)

import Data.Foldable (fold)
import Gimel.Attributes (className)
import Gimel.Html (Html, div, style, text)
import Style (stylesheet)
import Types (Event, Model)

view :: Model -> Html Event
view model = fold
    [ div [className "main"]
        [ div [className "header"] []
        , div [className "content"] []
        , div [className "footer"] []
        ]
    , style [] [text $ stylesheet {}]
    ]