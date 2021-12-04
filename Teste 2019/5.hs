partir :: Eq a=> a->[a]->([a],[a])
partir _ []=([],[])
partir x (y:ys) |x==y = ([],y:ys)
                |otherwise = (y:a,b)
                where (a,b)=partir x ys