module AlephZero.Header where

import Gimel.Attributes (className)
import Gimel.Html (Html, div)
import Types (Event, Model)

header :: Model -> Html Event
header model =
    div [className "header"] []