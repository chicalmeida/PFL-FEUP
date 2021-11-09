alg :: Int -> [Int]

alg 0 = []
alg n = alg(div n 10) ++ [mod n 10]