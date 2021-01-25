module Style where

import Prelude

import CSS (color, green)
-- AlephZero layer
import Style.AlephZero.Content (content)
import Style.AlephZero.Footer (footer)
import Style.AlephZero.Header (header, headerButton)
import Style.Main (main)
import Style.Utils (cssToString, e)
import Types (Theme)

stylesheet :: Theme -> String
stylesheet _ = cssToString do
-- Root
    e ".main" main
-- AlephZero Layer
    e ".header" header
    e ".headerButton" headerButton

    e ".content" content
    e ".footer" footer