module Style.AlephZero.Header where

import Prelude

import CSS (CSS, backgroundColor, height, pct, width)
import Data.Array.NonEmpty (concat)
import Gimel.Utils ((|:))
import Style.Utils (hex)
import Types (Theme)

header :: CSS
header = do
    backgroundColor $ hex "#111"
    height $ pct 10.0
    width  $ pct 100.0