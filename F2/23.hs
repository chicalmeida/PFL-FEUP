--a
addPoly::[Int]->[Int]->[Int]
addPoly p [] = p
addPoly [] q = q
addPoly (p:ps) (q:qs) = (p+q):addPoly ps qs
--b
multPoly :: [Int] -> [Int] -> [Int]
multPoly []      qs      = []
multPoly ps      []      = []
multPoly (a0:ps) (b0:qs) = (a0*b0) : restantes
  where
    restantes = addPoly (addPoly resto1 resto2) resto3
    resto1 = [a0*q | q<-qs]
    resto2 = [b0*p | p<-ps]
    resto3 = 0 : multPoly ps qs