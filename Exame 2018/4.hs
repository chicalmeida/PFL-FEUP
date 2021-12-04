merge::Ord a=>[a]->[a]->[a]

merge xs [] = xs
merge [] ys = ys
merge xss@(x:xs) yss@(y:ys)
                           | x <= y = x : merge xs yss
                           | otherwise = y : merge xss ys