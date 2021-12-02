sinal :: [Double]
sinal = 1.0 : (-1.0) : sinal

nume = map (*4) sinal
denom = [1,3..]

calcPi1 :: Int->Double
calcPi2 :: Int->Double 

pi1 :: Int->[Double]
pi1 n = zipWith (/) (take n nume) (take n denom)

calcPi1 n = sum (pi1 n)

denom2 = [x*y*z|x<-[2,4..], y<-[3,5..], z<-[4,6..]]
calcPi2 n = 3 + sum (zipWith (/) (take n nume) (take n denom2))

--serie 1 converge mais rápido