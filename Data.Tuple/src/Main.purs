module Main where

import Prelude
import Data.Tuple
import Effect (Effect)
import Effect.Class.Console (logShow)
import Data.Maybe
import Data.Foldable

add a b = a + b

first :: forall a b. Tuple a b -> a
first a = fst a

second :: forall a b. Tuple a b -> b
second a = snd a

curry1 :: forall a b c. (Tuple a b -> c) -> a -> b -> c
curry1 a b c = curry a b c

uncurry1 :: forall a b c. (a -> b -> c) -> Tuple a b -> c
uncurry1 a b = uncurry a b

swapping :: forall a b. Tuple a b -> Tuple b a
swapping a = swap a

lookup1 :: forall a b f. Foldable f => Eq a => a -> f (Tuple a b) -> Maybe b
lookup1 a array = lookup a array

main :: Effect Unit
main = do
  logShow $ first (Tuple 5 7)
  logShow $ second (Tuple 2 7)
  logShow $ curry first 4 7
  logShow $ uncurry1 add(Tuple 4 8)
  logShow $ swapping (Tuple 30 6)
  logShow $ lookup1 70 [(Tuple 20 88), (Tuple 40 60)]