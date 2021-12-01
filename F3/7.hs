--a
aux :: a -> [a] -> [a]
aux a l = l ++ [a]

(+++) :: [a] -> [a] -> [a]
(+++) x y = foldr aux x y

--b
myconcat :: [[a]]->[a]
myconcat l = foldl (++) [] l
