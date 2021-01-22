module Style.Utils where

import Prelude

import CSS (CSS, Color, black, element, fromHexString, fromString, prefixed, render, renderedSheet, select)
import Data.Maybe (fromMaybe)

custom :: String -> String -> CSS
custom prop = prefixed (fromString prop)

e :: String -> CSS -> CSS
e name = select (element name)

hex :: String -> Color
hex = fromMaybe black <<< fromHexString

cssToString :: CSS -> String
cssToString = fromMaybe "ERROR IN A STYLE GENERATION" <<< renderedSheet <<< render
