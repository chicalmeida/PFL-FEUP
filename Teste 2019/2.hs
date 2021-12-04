--a
pitagoricos :: Int->Int->Int->Bool 
pitagoricos a b c = a^2+b^2==c^2 || a^2+c^2==b^2 ||c^2+b^2==a^2

hipotenusa::Float->Float ->Float 
hipotenusa a b = sqrt(a^2+b^2)