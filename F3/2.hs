import Graphics.Win32.GDI (c_ArcTo)
--4/7/8/11/14/15

dec2int :: [Int] -> Int
 
dec2int [l]=l
dec2int l = foldl ((+).(*10)) 0 l
