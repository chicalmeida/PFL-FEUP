xor' :: Bool -> Bool -> Bool
True `xor'` True = False
False `xor'` False = False
True `xor'` False = True
False `xor'` True = True 
