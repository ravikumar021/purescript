module Main where

import Prelude
import Math
import Effect (Effect)
import Effect.Class.Console (logShow)

circleArea r = pi * r * r

main :: Effect _
main =logShow(circleArea 8.0)
