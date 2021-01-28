module Component.Lobby where

import CSS (fontSize, px)
import Gimel.Attributes (className, style)
import Gimel.Component (Component)

import Gimel.Html (Html, div, text)
import Types (Event, Model)

lobby :: Model -> Html Event
lobby model =
    div [className "lobby"]
        [ div [style {fontSize: "100px"}] [text "Text 4 DB output"]
        ]