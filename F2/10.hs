--d)
rep::Int ->a->[a]

rep 0 _ = []
rep n a = a:rep (n-1) a

--e)
nth :: [a]->Int -> a
nth (x:xs) 0 = x
nth (x:xs) n = nth xs (n-1)

