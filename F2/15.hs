intersperse :: a -> [a] -> [a]

intersperse a []=[]
intersperse a [l]=[l]
intersperse a (x:xs) = [x, a] ++ intersperse a xs