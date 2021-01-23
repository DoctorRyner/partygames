module AlephZero.Content where

import Gimel.Attributes (className)
import Gimel.Html (Html, div)
import Types (Event, Model)

content :: Model -> Html Event
content model =
    div [className "content"] []