numEqual :: Int->Int->Int->Int 
numEqual x y z |x==y && x==z = 3
               |x==y || y==z = 2
               |otherwise = 0