module Main where

import Prelude
import Effect (Effect)
import Effect.Class.Console (logShow)
import Data.Number
import Data.Maybe

fromString1 :: String -> Maybe Number
fromString1 s = fromString s

nan1 :: Number
nan1 = nan

isNaN1 :: Number -> Boolean
isNaN1 n = isNaN n

infinity1 :: Number
infinity1 = infinity

isFinite1 :: Number -> Boolean
isFinite1 f = isFinite f

main :: Effect Unit
main = do
  logShow $ fromString1 "567"
  logShow $ fromString1 "567.0"
  logShow $ nan1
  logShow $ isNaN1 nan
  logShow $ isNaN1 9.0
  logShow $ infinity1
  logShow $ isFinite1 (0.0/0.0)
  logShow $ isFinite1  8.0