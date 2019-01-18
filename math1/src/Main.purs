module Main where

import Prelude
import Effect (Effect)
import Effect.Class.Console (logShow)
import Math(max, min)
import Math

abs1 :: Number -> Number
abs1 a = abs a

acos1 :: Number -> Radians
acos1 n = acos n

asin1 :: Number -> Radians
asin1 n = asin n

atan1 :: Number -> Radians
atan1 n = atan n

atan21 :: Number -> Number -> Radians
atan21 n n1 = atan2 n n1

ceil1 :: Number -> Number
ceil1 c = ceil c

cos1 :: Radians -> Number
cos1 r = cos r

exp1 :: Number -> Number
exp1 e = exp e

floor1 :: Number -> Number
floor1 f = floor f

log1 :: Number -> Number
log1 l = log l

max1 :: Number -> Number -> Number
max1 a b = max a b

min1 :: Number -> Number -> Number
min1 a b = min a b

pow1 :: Number -> Number -> Number
pow1 x n = pow x n

round1 :: Number -> Number
round1 n = round n

sin1 :: Radians -> Number
sin1 r = sin r

sqrt1 :: Number -> Number
sqrt1 n = sqrt n

tan1 :: Radians -> Number
tan1 r = tan r

trunc1 :: Number -> Number
trunc1 t = trunc t

remainder1 :: Number -> Number -> Number
remainder1 n n1 = remainder n n1

main :: Effect Unit
main = do
  logShow $ abs1 (-80.0)
  logShow $ abs1 9.9
  logShow $ acos1 0.8
  logShow $ acos1 0.0
  logShow $ acos1 1.0
  logShow $ asin1 0.0
  logShow $ asin1 1.0
  logShow $ asin1 0.5
  logShow $ atan1 0.0
  logShow $ atan1 1.0
  logShow $ atan1 25.0
  logShow $ atan21 1.0 1.0
  logShow $ ceil1 1.4
  logShow $ floor 1.9
  logShow $ round 2.4
  logShow $ round 2.8
  logShow $ cos1 0.0
  logShow $ cos1 1.0
  logShow $ exp1 0.0
  logShow $ exp1 1.0
  logShow $ log1 0.0
  logShow $ log1 1.0
  logShow $ log1 0.5
  logShow $ max1 3.0 4.0
  logShow $ min1 3.0 4.0
  logShow $ pow1 2.0 3.0
  logShow $ sin1 0.0
  logShow $ sin1 (pi/2.0)
  logShow $ tan1 1.0
  logShow $ tan1 0.0
  logShow $ sqrt1 2.0
  logShow $ sqrt1 4.0
  logShow $ remainder1 7.0 3.0
  logShow $ remainder1 17.0 3.0
  logShow $ trunc1 18.8
  logShow $ trunc1 (-18.8)