mf :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mf f p xs = map f (filter p xs)