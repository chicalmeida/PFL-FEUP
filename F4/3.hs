intercalar::a->[a]->[[a]]
intercalar a [] = [[a]]
intercalar a xs= (xs++[a]) : [i++[last xs]|i<-intercalar a (init xs)]