module Component.Lobby where

import Gimel.Attributes (className)
import Gimel.Component (Component)
import Gimel.Html (Html, div)
import Types (Event, Model)

lobby :: Model -> Html Event
lobby model =
    div [className "lobby"] []