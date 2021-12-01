--a 
insert :: Ord a => a -> [a] -> [a]

insert a []=[a]
insert a (x:xs) | a>x = x : insert a xs
                | otherwise = a : (x:xs)

--b
isort :: Ord a => [a]->[a]
isort []=[]
isort [a]=[a]
isort (x:xs) = insert x (isort xs)