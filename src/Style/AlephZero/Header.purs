module Style.AlephZero.Header where

import Prelude

import CSS (CSS, alignItems, backgroundColor, borderBottom, borderRight, display, flex, flexDirection, flexGrow, height, justifyContent, pct, px, row, solid, width)
import CSS.Common (center)
import Color.Scheme.Clrs (red)
import Gimel.Utils ((|:))
import Math (abs)
import Style.Utils (hex)
import Types (Theme)

header :: CSS
header = do
    display flex
    flexDirection row
    backgroundColor $ hex "#111"
    height $ pct 10.0
    width  $ pct 100.0
    borderBottom solid (px 2.0) red

headerButton :: CSS
headerButton = do
    display flex
    justifyContent center
    alignItems center
    flexGrow 1
    backgroundColor $ hex "#999"
    borderRight solid (px 2.0) red