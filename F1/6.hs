
roots :: Float -> Float -> Float -> (Maybe Float, Maybe Float)
roots a b c | delta > 0 = ( Just ((-b+sqrt delta)/(2*a)), Just ((-b-sqrt delta)/(2*a)) )
            | delta == 0 = ( Just (-b/(2*a)), Nothing )
            | otherwise = ( Nothing, Nothing )
            where delta = b^2 - 4*a*c
