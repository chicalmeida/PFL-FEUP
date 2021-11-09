binom :: Integer -> Integer -> Integer 

binom n k = product [1..n] `div` (product [1..k]*product [1..(n-k)])

pascal :: Integer -> [[Integer]]

pascal a = [map(binom i)[0..i] | i <- [0..a]]

-- 20/23

