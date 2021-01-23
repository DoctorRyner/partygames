module Style where

import Prelude

import CSS (color, green)
-- AlephZero modules
import Style.AlephZero.Header(header)
import Style.AlephZero.Content(content)
import Style.AlephZero.Footer(footer)
-- Project modules
import Style.Main (main)
import Style.Utils (cssToString, e)
import Types (Theme)

stylesheet :: Theme -> String
stylesheet _ = cssToString do
-- Root
    e ".main" main
-- AlephZero Layer
    e ".header" header
    e ".content" content
    e ".footer" footer