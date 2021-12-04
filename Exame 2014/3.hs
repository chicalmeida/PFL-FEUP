subidas :: [Float] -> Int
subidas []=0
subidas l  | length l <2 = 0
           |head l < head(tail l) = c+1
           | head l > head(tail l) = c
            where c=0

