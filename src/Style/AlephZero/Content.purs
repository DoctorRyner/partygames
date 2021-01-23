module Style.AlephZero.Content where

import Prelude

import CSS (CSS, backgroundColor, height, pct, width)
import Data.Array.NonEmpty (concat)
import Gimel.Utils ((|:))
import Style.Utils (hex)
import Types (Theme)

content :: CSS
content = do
    backgroundColor $ hex "#699"
    height $ pct 80.0
    width  $ pct 100.0