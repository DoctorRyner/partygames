module Update where

import Prelude hiding (div)

import Components.CRUD (getReq)
import Effect.Class (liftEffect)
import Effect.Class.Console (log)
-- import Effect.Console (log)
import Gimel.Cmd (cmd)
import Gimel.Types (Update)
import Gimel.Utils (withCmds)
import Types (Event(..), Model)

update :: Model -> Event -> Update Model Event
update model event = case event of
    Inc -> pure model {counter = model.counter + 1}
    Dec -> pure model {counter = model.counter - 1}
    HttpTest -> withCmds model 
        [ cmd $ liftEffect getReq
        , cmd $ log "test"
        ]