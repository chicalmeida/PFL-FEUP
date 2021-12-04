diferentes::Eq a=>[a]->[a]
diferentes []=[]
diferentes [x]=[]
diferentes (x:xs) | x == head xs = diferentes xs
                  | otherwise = x:diferentes xs

diferentes xs = [x|(x,y)<-zip xs (tail xs), x/=y]