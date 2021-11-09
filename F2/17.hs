cd :: Int -> Int-> [Int]

cd 0 b = []
cd v b = cd (div v b) b ++ [mod v b] 

