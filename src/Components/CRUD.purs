module Components.CRUD where

import Prelude

import Affjax as AX
import Affjax.ResponseFormat as ResponseFormat
import Data.Argonaut.Core (stringify)
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.HTTP.Method (Method(..))
import Effect (Effect)
import Effect.Aff (launchAff)
import Effect.Class.Console (log)

getReq :: Effect Unit
getReq = void $ launchAff do 
    req <- AX.get ResponseFormat.json "/api/test/"
    case req of
        Left err -> log $ "GET /api response failed to decode: " <> AX.printError err
        Right response -> log $ "GET /api response: " <> stringify response.body