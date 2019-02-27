module Main where

import Prelude

import Data.Maybe ()
import Effect (Effect)
import Effect.Class.Console (logShow)
import Data.Array
import Data.Array (singleton, range, replicate, null, length, uncons, take, drop, dropWhile, foldM)
import Data.Foldable
import Control.Lazy
import Control.Monad.Rec.Class
import Data.Array.NonEmpty.Internal
import Data.Int
import Partial.Unsafe (unsafePartial)
-- import Prim.Partial
import Data.Tuple
import Data.Ordering
import Control.Alternative
import Data.Unfoldable
import Data.Maybe
import Data.String

invertCompare a b = invert $ compare a b

array1 :: Array Unit
array1 = [unit,unit,unit,unit,unit,unit]

add :: Number -> Number -> Number
add a b = a + b

add1 :: Int -> Int -> Maybe Int
add1 a b = Just(a + b)

add2 :: Int -> Int -> Int
add2 i i2 = i+i2

add3 :: Int -> Int
add3 i = i+5

greater :: Int -> Int -> Boolean
greater i i1 = if i > i1 then true else false

arrayint :: Array Int
arrayint = [2,45,2,7678,34,22,34,344,21,42]

arrayin :: Array Int
arrayin = [3,6,5,3,2,667,45,3212,21]

array :: Array Number
array = [1.0,6.0,6.0,9.4,4.37,3.5,3.5,2.43]

array2 :: Array Number
array2 = [3.4,3.4,7.6,32.4,45.345,5.3,43.4]

arraytuple :: Array (Tuple String 
arraytuple = [Tuple "m" 4, Tuple "v" 3, Tuple "e" 2, Tuple "a" 5]

arraystr :: Array String
arraystr = ["a", "b", "c", "d", "e","c","a"]

arrayar :: Array (Array Int)
arrayar = [[1,2,3,4,5], [10,20,30,40,50], [11,12,13,14,15], [90,80,70,60,50], [0,9,8,7,6]]

arraym :: Array (Maybe Int)
arraym = [Just 3, Just 6, Just 8, Just 9, Just 90, Just 67]

maybeItself :: Int -> Maybe Int
maybeItself i = if i `mod` 2 == 0 then (Just i) else (Just (i+1))

maybeBoolean :: Int -> Maybe Boolean
maybeBoolean i = if i `mod` 2 == 0 then (Just true) else (Just false)

fromFoldable1 ::  forall f. Foldable f => f ~> Array
fromFoldable1 f = fromFoldable f

toUnfoldable1 :: forall f. Unfoldable f => Array ~> f
toUnfoldable1 array = toUnfoldable array

singleton1 :: forall a. a -> Array a
singleton1 a = singleton a

range1 :: Int -> Int -> Array Int
range1 f t = range f t

replicate1 :: forall a. Int -> a -> Array a
replicate1 n s = replicate n s

some1 :: forall f a. Alternative f => Lazy (f (Array a)) => f a -> f (Array a)
some1 f = some f

many1 :: forall f a. Alternative f => Lazy (f (Array a)) => f a -> f (Array a)
many1 f = many f

null1 :: forall a. Array a -> Boolean
null1 array = null array

length1 :: forall a. Array a -> Int
length1 array = length array

cons1 :: forall a. a -> Array a -> Array a
cons1 a array = cons a array

snoc1 :: forall a. Array a -> a -> Array a
snoc1 array a = snoc array a

insert1 :: forall a. Ord a => a -> Array a -> Array a
insert1 a array = insert a array

insertBy1 :: forall a. (a -> a -> Ordering) -> a -> Array a -> Array a
insertBy1 o a array = insertBy o a array

head1 :: forall a. Array a -> Maybe a
head1 array = head array

last1 :: forall a. Array a -> Maybe a
last1 array = last array

tail1 :: forall a. Array a -> Maybe (Array a)
tail1 array = tail array

init1 :: forall a. Array a -> Maybe (Array a)
init1 array = init array

uncons1 :: forall a. Array a -> Maybe {head :: a, tail :: Array a}
uncons1 array = uncons array

unsnoc1 :: forall a. Array a -> Maybe {init :: Array a, last :: a}
unsnoc1 array = unsnoc array

index1 :: forall a. Array a -> Int -> Maybe a
index1 array i = index array i

elemIndex1 :: forall a. Eq a => a -> Array a -> Maybe Int
elemIndex1 a array = elemIndex a array

elemLastIndex1 :: forall a. Eq a => a -> Array a -> Maybe Int
elemLastIndex1 a array = elemLastIndex a array

findIndex1 :: forall a. (a -> Boolean) -> Array a -> Maybe Int
findIndex1 a b = findIndex a b

findLastIndex1 :: forall a. (a -> Boolean) -> Array a -> Maybe Int
findLastIndex1 b array = findLastIndex b array

insertAt1 :: forall a. Int -> a -> Array a -> Maybe (Array a)
insertAt1 i a array = insertAt i a array

deleteAt1 :: forall a. Int -> Array a -> Maybe (Array a)
deleteAt1 i array = deleteAt i array

updateAt1 :: forall a. Int -> a -> Array a -> Maybe (Array a)
updateAt1 i a array = updateAt i a array

updateAtIndices1 :: forall t a. Foldable t => t (Tuple Int a) -> Array a -> Array a
updateAtIndices1 t array = updateAtIndices t array

modifyAt1 :: forall a. Int -> (a -> a) -> Array a -> Maybe (Array a)
modifyAt1 i f array = modifyAt i f array

modifyAtIndices1 :: forall t a. Foldable t => t Int -> (a -> a) -> Array a -> Array a
modifyAtIndices1 t f array = modifyAtIndices t f array

alterAt1 :: forall a. Int -> (a -> Maybe a) -> Array a -> Maybe (Array a)
alterAt1 i f array = alterAt i f array

reverse1 :: forall a. Array a -> Array a
reverse1 array = reverse array

concatinate :: forall a. Array (Array a) -> Array a
concatinate array = concat array

concatMap1 :: forall a b. (a -> Array b) -> Array a -> Array b
concatMap1 array1 array2 = concatMap array1 array2

filter1 :: forall a. (a -> Boolean) -> Array a -> Array a
filter1 b array = filter b array

partition1 :: forall a. (a -> Boolean) -> Array a -> { yes :: Array a, no :: Array a }
partition1 b array = partition b array

filterA1 :: forall a f. Applicative f => (a -> f Boolean) -> Array a -> f (Array a)
filterA1 b array = filterA b array

mapMaybe1 :: forall a b. (a -> Maybe b) -> Array a -> Array b
mapMaybe1 m array = mapMaybe m array

catMaybes1 :: forall a. Array (Maybe a) -> Array a
catMaybes1 array = catMaybes array

mapWithIndex1 :: forall a b. (Int -> a -> b) -> Array a -> Array b
mapWithIndex1 f array = mapWithIndex f array

sort1 :: forall a. Ord a => Array a -> Array a
sort1 array = sort array

sortBy1 :: forall a. (a -> a -> Ordering) -> Array a -> Array a
sortBy1 a array = sortBy a array

sortWith1 :: forall a b. Ord b => (a -> b) -> Array a -> Array a
sortWith1 f array = sortWith f array

slice1 :: forall a. Int -> Int -> Array a -> Array a
slice1 i1 i2 array = slice i1 i2 array

take1 :: forall a. Int -> Array a -> Array a
take1 i array = take i array

takeEnd1 :: forall a. Int -> Array a -> Array a
takeEnd1 i array = takeEnd i array

drop1 :: forall a. Int -> Array a -> Array a
drop1 i array = drop i array

dropEnd1 :: forall a. Int -> Array a -> Array a
dropEnd1 i array = dropEnd i array

dropWhile1 :: forall a. (a -> Boolean) -> Array a -> Array a
dropWhile1 b array = dropWhile b array

span1 :: forall a. (a -> Boolean) -> Array a -> { init :: Array a, rest :: Array a }
span1 b array = span b array

group1 :: forall a. Eq a => Array a -> Array (NonEmptyArray a)
group1 array = group array

groupBy1 :: forall a. (a -> a -> Boolean) -> Array a -> Array (NonEmptyArray a)
groupBy1 b array = groupBy b array

nub1 :: forall a. Ord a => Array a -> Array a
nub1 array = nub array

nubEq1 :: forall a. Eq a => Array a -> Array a
nubEq1 array = nubEq array

nubBy1 :: forall a. (a -> a -> Ordering) -> Array a -> Array a
nubBy1 o array = nubBy o array

nubByEq1 :: forall a. (a -> a -> Boolean) -> Array a -> Array a
nubByEq1 b array = nubByEq b array

union1 :: forall a. Eq a => Array a -> Array a -> Array a
union1 array1 array2 = union array1 array2

unionBy1 :: forall a. (a -> a -> Boolean) -> Array a -> Array a -> Array a
unionBy1 b array1 array2 = unionBy b array1 array2

delete1 :: forall a. Eq a => a -> Array a -> Array a
delete1 a array = delete a array

deleteBy1 :: forall a. (a -> a -> Boolean) -> a -> Array a -> Array a
deleteBy1 b a array = deleteBy b a array

difference1 :: forall a. Eq a => Array a -> Array a -> Array a
difference1 array1 array2 = difference array1 array2

intersect1 :: forall a. Eq a => Array a -> Array a -> Array a
intersect1 array1 array2 = intersect array1 array2

intersectBy1 :: forall a. (a -> a -> Boolean) -> Array a -> Array a -> Array a
intersectBy1 b array1 array2 = intersectBy b array1 array2

zipWith1 :: forall a b c. (a -> b -> c) -> Array a -> Array b -> Array c
zipWith1 f array1 array2 = zipWith f array1 array2

zipWithA1 :: forall m a b c. Applicative m => (a -> b -> m c) -> Array a -> Array b -> m (Array c)
zipWithA1 f array1 array2 = zipWithA f array1 array2

zip1 :: forall a b. Array a -> Array b -> Array (Tuple a b)
zip1 array1 array2 = zip array1 array2

unzip1 :: forall a b. Array (Tuple a b) -> Tuple (Array a) (Array b)
unzip1 array = unzip array

foldM1 :: forall m a b. Monad m => (a -> b -> m a) -> a -> Array b -> m a
foldM1 f a array = foldM f a array

foldRecM1 :: forall m a b. MonadRec m => (a -> b -> m a) -> a -> Array b -> m a
foldRecM1 f a array = foldRecM f a array

unsafeIndex1 :: forall a. Partial => Array a -> Int -> a
unsafeIndex1 array i = unsafeIndex array i

main :: Effect Unit
main = do
  logShow $ fromFoldable1 (Just 3)
  --logShow $ fromFoldable1 (Nothing)
  logShow $ singleton1 3
  logShow $ range1 0 9
 -- logShow $ range1 -7 8
  logShow $ range1 9 0
  logShow $ replicate1 4 "ravi"
  logShow $ null1 []
  logShow $ null1 [2,4,5]
  logShow $ length1 [2,4,5,6,8,456458,780,78679]
  logShow $ length1 array
  logShow $ cons1 1 [2,4,6,7,9]
  logShow $ cons1 26.8 array
  logShow $ snoc1 [2,4,7,9,4] 3
  logShow $ snoc1 array 49.7
  logShow $ insert1 15 [1,5,10,16,25,28,36]
  logShow $ insert1 12 [56,34,14,9,7]
  logShow $ insertBy1 invertCompare 10 [21,20,15,12,9,6,3]
  logShow $ insertBy1 invertCompare 15 [1,4,6,13,16,25,46]
  logShow $ head1 [1,2,3,4,5]
  logShow $ last1 [2,4,56,78]
  logShow $ tail1 [2,3,5,67,78]
  logShow $ init1 [2,3,4,5,6]
  logShow $ uncons1 [2,6,13,45]
  logShow $ uncons1 array
  logShow $ unsnoc1 [3,5,7,13,27]
  logShow $ unsnoc1 array
  logShow $ index1 array 4
  logShow $ index1 [2,4,6] 4
  logShow $ elemIndex1 1 [3,2,1,4,5,1]
  logShow $ elemIndex1 3.5 array
  logShow $ elemLastIndex1 3.5 array
  logShow $ elemLastIndex1 1 [3,2,1,4,5,1]
  logShow $ findIndex1 (contains (Pattern "c")) arraystr
  logShow $ findLastIndex1 (contains (Pattern "a")) arraystr
  logShow $ insertAt1 3 3.5 array
  logShow $ deleteAt1 4 array
  logShow $ updateAt1 2 4.5 array
  logShow $ modifyAt1 4 toUpper arraystr
  logShow $ modifyAtIndices1 [1, 3] toUpper arraystr
  logShow $ reverse1 array
  logShow $ reverse1 [2,4,6,1,7,5]
  logShow $ concatinate arrayar
  logShow $ concatMap1 singleton1 array
  logShow $ concatMap1 (split $ Pattern " ") ["Hello Ravi Sharma", "Other things"]
  logShow $ sort1 array
  logShow $ sort1 [2,5,9,3,1,5,7]
  logShow $ take1 3 array
  logShow $ take1 3 ["c","d","e","k","l"]
  logShow $ takeEnd1 2 ["c","d","e","k","l"]
  logShow $ takeEnd1 2 array
  logShow $ nub1 array
  logShow $ nub1 [1,3,5,5,7,2,1,8,6,3]
  logShow $ zip1 arraystr array
  logShow $ delete1 3.5 array
  logShow $ union1 array array2