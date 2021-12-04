parts::[a]->[[[a]]]
parts []=[[]]
parts (x:xs) = [[x]:ps|ps<-pss] ++ [(x:p):ps|(p:ps)<-pss]
            where pss = parts xs