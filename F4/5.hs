import Data.Char (ord, chr)
cifrar :: Int -> Char -> Char
cifrar k s = chr ( ((ord s - ord 'A' + k) `mod` 26) + ord 'A')

cifraChave :: String -> String -> String
cifraChave p s = [cifrar k xs | (k, xs) <- zipList]
    where 
        zipList = [(x,y) | (x,y) <- zip cycleList s]
        cycleList = cycle list
        list = [ ord x - ord 'A' | x <- p]
