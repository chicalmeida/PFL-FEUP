nub :: Eq a => [a]->[a]

nub []=[]
nub l = head l : nub [x|x<-tail l, x /= head l]