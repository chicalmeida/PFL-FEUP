ultimo :: [a]-> a 
ultimo l = head (drop (length l-1) l)

ultimo2 :: [a] -> a
ultimo2 l = head (reverse l)

init1 :: [a]-> [a]
init1 l = reverse (drop 1 (reverse l))

init2 :: [a]-> [a]
init2 l = take (length l -1) l