module AlephZero.Header where

import Prelude hiding (div)

import Data.Foldable (fold)
import Gimel.Attributes (className)
import Gimel.Html (Html, div, label, text)
import Types (Event, Model)
import Web.DOM.Element (id)

header :: Model -> Html Event
header model = div
    [className "header"]
    [ fold $ map (\x -> headerButton x) ["hey", "this", "is", "header"]
    ]

headerButton :: String -> Html Event
headerButton someText = div
    [className "headerButton"]
    [label [] [text someText]]