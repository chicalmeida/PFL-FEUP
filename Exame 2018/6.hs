decomporAux :: Int -> [Int] -> [Int] -> [[Int]]
decomporAux _ [] _ = []
decomporAux 0 _ x = [x]
decomporAux n lst@(x : xs) l
  | n <= 0 = []
  | otherwise = decomporAux (n - x) lst (x : l) ++ decomporAux n xs l

decompor :: Int -> [Int] -> [[Int]]
decompor n x = decomporAux n x []