intercalar::a->[a]->[[a]]
intercalar a [] = [[a]]
intercalar a xs= (xs++[a]) : [i++[last xs]|i<-intercalar a (init xs)]

unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (x : xs)
  | x `elem` xs = unique xs
  | otherwise = x : unique xs

perms :: Eq a => [a] -> [[a]]
perms [a] = [[a]]
perms l = unique (concat [intercalar (l!!i) perm | i <- [0..length l - 1], perm <- perms (take i l ++ drop (i+1) l)]) 
