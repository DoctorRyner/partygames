module View where

import Prelude hiding(div)

import Data.Foldable (fold)
import Gimel.Attributes (className, onClick)
import Gimel.Html (Html, button, div, style, text, textS)
import Style (stylesheet)
import Types (Event(..), Model)

view :: Model -> Html Event
view model = fold
    [ button [onClick Inc] [text "+"]
    , textS model
    , button [onClick Dec] [text "-"]
    , div [className "main"] []
    , style [] [text $ stylesheet {}]
    ]