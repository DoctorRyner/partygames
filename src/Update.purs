module Update where

import Prelude hiding (div)

import Gimel.Types (Update)
import Types (Event(..), Model)


update :: Model -> Event -> Update Model Event
update model event = case event of
    Inc -> pure model {counter = model.counter + 1}
    Dec -> pure model {counter = model.counter - 1}