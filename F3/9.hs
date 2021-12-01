myscan :: (a->b->a)->a->[b]->[a]

myscan f a [] = [(foldl f a [])]
myscan f a l = (myscan f a (init l)) ++ [(foldl f a l)]

myScanl' :: (b -> a -> b) -> b -> [a] -> [b]
myScanl' f acc [] = [acc]
myScanl' f acc (x:xs) = acc : myScanl' f (f acc x) xs