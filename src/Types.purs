module Types where

data Event
    = Inc
    | Dec
    | HttpTest

type Model = {counter :: Int, httpTest :: String}

type Theme = {}