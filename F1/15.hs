--a
mediana :: Ord a => a->a->a->a
mediana a b c | (a>c && b>a) || (a>b && c>a) = a
              | (b>c && a>b) || (b>a && c>b) = b
              | (c>a && c<b) || (c>b && c<a) = c

--b
mediana' :: (Ord a, Num a) => a -> a -> a -> a
mediana' a b c = a + b + c - max a (max b c) - min a (min b c)