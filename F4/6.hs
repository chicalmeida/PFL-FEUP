binom :: Integer -> Integer -> Integer

binom n k = product[1..n] `div` (product[1..k]*product[1..n-k])

pascal :: [[Integer]]
pascal = [[binom n k|n<-[0,1..], k<-[0..n]]]