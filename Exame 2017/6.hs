quadrados::[Int]->[Int]
quadrados []=[]
quadrados (x:xs) = x^2:quadrados xs

--quadrados xs = [x^2|x<-xs]