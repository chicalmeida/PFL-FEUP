niguais :: Int-> a-> [a]
--niguais n a = replicate n a

--a
niguais 0 a = []
niguais n a = a : niguais (n-1) a

--b
--niguais x n = [n | y <- [1..x]]