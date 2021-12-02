primos::[Int]
primos = crivo [2..]

crivo::[Int]->[Int]
crivo (p:xs) = p:crivo[x|x<-xs, x`mod`p/=0]

factores::Int->[Int]
factores a = fact a primos

fact::Int->[Int]->[Int]
fact 1 p = []
fact n p = if n`mod`head p == 0 then head p : fact(n`div`head p) primos
        else fact n (tail p)