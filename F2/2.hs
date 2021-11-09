aprox :: Int -> Double 
aprox n = 4*sum([((-1)^x)/fromIntegral (2*x+1)|x<-[0..n]])

aproxb :: Int -> Double 
aproxb k = sqrt(12*sum([((-1)^x)/fromIntegral (x+1)^2|x<-[0..k]]))