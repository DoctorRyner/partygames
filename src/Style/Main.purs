module Style.Main where

import Prelude

import CSS (CSS, backgroundColor, height, pct, vh, width)
import Data.Array.NonEmpty (concat)
import Gimel.Utils ((|:))
import Style.Utils (hex)
import Types (Theme)

main :: CSS
main = do
    backgroundColor $ hex "#888"
    height $ vh 100.0
    width  $ pct 100.0