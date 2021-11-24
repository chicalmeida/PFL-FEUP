--max :: Ord a => a -> a -> a
--min :: Ord a => a -> a -> a
--max x y = if x>=y then x else y
--min x y = if x<=y then x else y

-- a)

--max3, min3 :: Ord a => a -> a -> a
--max3 x y z= if x>=y && x >= z then x else 
--    (if ..<.. && .. >= .. then .. else) ..

--min3 x y z= if x<=y then x else y

-- b)

max3 :: Ord a => a -> a -> a -> a
max3 x y z = max (max x y) z 

min3 :: Ord a => a -> a -> a -> a
min3 x y z = min (min x y) z 
