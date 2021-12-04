par::Int->Bool 
par x = x`mod`2==0

enquantoPar::[Int]->[Int]
enquantoPar xs = takeWhile par xs