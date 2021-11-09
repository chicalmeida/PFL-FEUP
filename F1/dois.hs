cals :: Float ->Float ->Float ->Float 
cals a b c = (a+b+c)/2

areaTriangulo :: Float -> Float -> Float -> Float

areaTriangulo a b c = sqrt(cals a b c * (cals a b c - a)*(cals a b c - b)*(cals a b c - c))