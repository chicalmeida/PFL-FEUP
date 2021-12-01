import Data.Char
cifrar::Int->String->String 

cifrar k s = [chr ( ((ord x - ord 'A' + k) `mod` 26) + ord 'A') | x <- s ]