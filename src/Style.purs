module Style where

import Prelude

import CSS (color, green)
import Style.Main (main)
import Style.Utils (cssToString, e)
import Types (Theme)

stylesheet :: Theme -> String
stylesheet _ = cssToString do
    e ".main" main