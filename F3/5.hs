import Data.Char
mymax :: Ord a => [a]->a
mymin :: Ord a => [a]->a

mymax a = foldl1 (max) a

mymin a = foldl1 (min) a