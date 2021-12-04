type Ponto=(Double,Double)

p1=(3.0, 2.0)
p2=(1.0, 2.0)
p3=(-3.0, -2.0)
distancia :: Ponto->Ponto->Double 
distancia a b = sqrt x
            where x=(fst b-fst a)^2+(snd b-snd a)^2

declive::Ponto->Ponto->Double
declive a b = (snd a - snd b)/(fst a-fst b)

colineares::Ponto->Ponto->Ponto->Bool 
colineares a b c = declive a b == declive b c

