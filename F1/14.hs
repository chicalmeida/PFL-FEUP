curta :: [a]->Bool

--a)
--curta l | length l <= 2 = True
--        | otherwise = False 

--b)
curta l | null(tail l) = True 
        | null(tail (tail l))= True
        | null(tail(tail(tail l))) = True 
        |otherwise = False