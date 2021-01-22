module Main where

import Prelude hiding (div)
import Effect (Effect)
-- Gimel modules
import Gimel.Engine (run)
-- Project modules
import Subs (subs)
import Types (Model)
import Update (update)
import View (view)

init :: Model
init = {counter: 0}

main :: Effect Unit
main = run {init, view, update, subs}
