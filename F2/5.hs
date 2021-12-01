divprop :: Integer -> [Integer]

divprop n = [x|x<-[1..n-1], mod n x == 0]

perfeitos :: Integer ->[Integer]

perfeitos a =[x|x<-[1..a], x==sum(divprop x)]