import Data.Char
forte :: String -> Bool 
forte a = length a>=8 && any isLower a && any isUpper a && any isNumber a