module Style.Lobby where

import Prelude

import CSS (CSS, backgroundColor, height, pct, vh, width)
import Data.Array.NonEmpty (concat)
import Gimel.Utils ((|:))
import Style.Utils (hex)
import Types (Theme)

lobby :: CSS
lobby = do
    backgroundColor $ hex "#333"
    height $ vh 100.0
    width  $ pct 100.0