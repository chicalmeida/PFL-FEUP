--a)
myand ::[Bool]->Bool
myand [] = True 
myand (x:xs) | x = myand xs
             | otherwise = False

--b)
myor :: [Bool]->Bool
myor []=False
myor (x:xs) |x=myor xs
            |otherwise = True

--c)->perguntar lipi
myconcat :: [[a]]->[a]
myconcat [[xs]] = [xs]
myconcat (x:xs) = x ++ myconcat xs

--d)
rep::Int ->a->[a]

rep 0 _ = []
rep n a = a:rep (n-1) a

--e)
nth :: [a]->Int -> a
nth (x:xs) 0 = x
nth (x:xs) n = nth xs (n-1)

--f)
myElem :: Eq a => a->[a]->Bool 
myElem n (x:xs) |n==x = True 
                |otherwise = myElem n xs

