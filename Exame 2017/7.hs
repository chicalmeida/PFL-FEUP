partesAux :: Int -> [Int] -> [Int] -> [[Int]]
partesAux _ [] _ = []
partesAux 0 _ y = [y]
partesAux n left@(x : xs) right
  | n <= 0 = []
  | otherwise = partesAux (n - x) left (x : right) ++ partesAux n xs right

partes :: Int -> [[Int]]
partes n = reverse (partesAux n [n, (n - 1) .. 1] [])