import GHC.Base (VecElem(Int16ElemRep))
-- a)
divprop :: Int -> [Int]

divprop n = [x|x<-[1..n], mod n x == 0]

minIndiv::Int->Int

minIndiv a = divprop a !! 1

-- b)
primo :: Int->Bool 
primo a = minIndiv a == a