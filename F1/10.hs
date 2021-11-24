imc :: Float -> Float -> String 

imc p a | imcv<18.5 = "baixo peso"
        | imcv>=18.5 && imcv<25 = "peso normal"
        | imcv>=25 && imcv<30 = "excesso de peso"
        | imcv>=30 = "obesidade"
        where imcv = p/(a*a)