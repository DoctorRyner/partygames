module Style.Main where

import Prelude

import CSS (CSS, backgroundColor, height, px, width)
import Data.Array.NonEmpty (concat)
import Gimel.Utils ((|:))
import Style.Utils (hex)
import Types (Theme)

main :: CSS
main = do
    -- backgroundColor $ hex "#666"
    "background" |: "#666"
    backgroundColor $ hex "#888"
    height $ px 200.0
    width  $ px 200.0