module Main where

import Prelude
import Effect (Effect)
import Effect.Class.Console (logShow)
import Data.Int
import Data.Maybe

round1 :: Number -> Int
round1 r = round r

even1 :: Int -> Boolean
even1 e = even e

odd1 :: Int -> Boolean
odd1 o = odd o

fromNumber1 :: Number -> Maybe Int
fromNumber1 f = fromNumber f

fromString1 :: String -> Maybe Int
fromString1 s = fromString s

toNumber1 :: Int -> Number
toNumber1 t = toNumber t

quot1 :: Int -> Int -> Int
quot1 q d = quot q d

rem1 :: Int -> Int -> Int
rem1 q d = rem q d

pow1 :: Int -> Int -> Int
pow1 p r = pow p r

parity1 :: Int -> Parity
parity1 p = parity p

ceil1 :: Number -> Int
ceil1 c = ceil c

floor1 :: Number -> Int
floor1 f = floor f



main :: Effect _
main = do
  logShow $ round1 7.9
  logShow $ round1 7.4
  logShow $ round1 (-7.9)
  logShow $ round1 (-7.4)
  logShow $ even1 5
  logShow $ even1 6
  logShow $ odd1 5
  logShow $ odd1 6
  logShow $ parity1 4
  logShow $ parity1 5
  logShow $ ceil1 3.4
  logShow $ ceil1 (-3.4)
  logShow $ floor 8.9
  logShow $ floor (-8.9)
  logShow $ pow1 2 3
  logShow $ rem1 7 3
  logShow $ rem1 9 7
  logShow $ quot1 7 2
  logShow $ quot1 2 3
  logShow $ quot1 (-2) 3
  logShow $ quot1 (-4) 3
  logShow $ quot1 2 (-3)
  logShow $ toNumber1 2
  logShow $ fromNumber1 4.0
  logShow $ fromString1 "458"

