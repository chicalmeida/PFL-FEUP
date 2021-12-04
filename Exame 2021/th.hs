primo :: Integer->Bool 
primo a | length l == 1 = True
        | otherwise = False 
        where l = [x|x<-[1..s], a`mod`x==0]
              s = round(sqrt (fromIntegral a))

gemeos :: Integer -> (Integer, Integer)
gemeos n = head [(p, p+2)|p<-[n..], primo p && primo (p+2)]