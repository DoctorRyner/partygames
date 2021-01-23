module AlephZero.Footer where

import Gimel.Attributes (className)
import Gimel.Html (Html, div)
import Types (Event, Model)

footer :: Model -> Html Event
footer model =
    div [className "footer"] []