fromBits::[Int]->Int 
fromBits [] = 0
fromBits a = last a + 2*fromBits(init a)
--fromBits a = fromBitsAux (reverse a)

fromBitsAux :: [Int] -> Int
fromBitsAux [] = 0
fromBitsAux (x:xs) = x + fromBitsAux ([a*2 | a <- xs])