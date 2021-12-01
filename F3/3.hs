myzipwith :: (a->b->c)->[a]->[b]->[c]

myzipwith _ _ [] = []
myzipwith _ [] _ = []
myzipwith f (a:as) (b:bs) = f a b:myzipwith f as bs