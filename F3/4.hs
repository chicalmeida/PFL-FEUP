insert :: Ord a => a -> [a] -> [a]

insert a []=[a]
insert a (x:xs) | a>x = x : insert a xs
                | otherwise = a : (x:xs)

isort :: Ord a => [a]->[a]


isort l = foldr insert l l
