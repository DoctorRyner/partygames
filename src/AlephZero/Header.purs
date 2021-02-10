module AlephZero.Header where

import Prelude hiding (div)

import Affjax as AX
import Affjax.ResponseFormat as ResponseFormat
import Data.Argonaut.Core (stringify)
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.HTTP.Method (Method(..))
import Effect (Effect)
import Effect.Aff (launchAff)
import Effect.Class.Console (log)
import Gimel.Attributes (className, onClick)
import Gimel.Cmd (cmd)
import Gimel.Html (Html, div, label, text)
import Types (Event(..), Model)

header :: Model -> Html Event
header model = div
    [className "header"]
    [ fold $ map (\x -> headerButton x) ["hey", "this", "is", "header"]
    ]

headerButton :: String -> Html Event
headerButton someText = div
    [className "headerButton", onClick HttpTest]
    [label [] [text someText]]