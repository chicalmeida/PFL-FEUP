import Stack
--a
operation :: Float -> String -> Float -> Float
operation a op b | op == "+" = b + a
                 | op == "-" = b - a
                 | op == "/" = b / a
                 | op == "*" = b * a
                

calc :: Stack Float -> String -> Stack Float
calc stk a | a == "+" || a == "*" || a == "-" || a == "/" = push (operation (top stk) a (top(pop stk))) (pop (pop stk))
           | otherwise =  push (read a) stk

--b
{-isSpace :: Char -> Bool 
isSpace c = c == ' '

palavras' :: String -> [String]
palavras' [] = [] 
palavras' s = takeWhile (not.isSpace) s : palavras' (dropWhile isSpace (dropWhile (not.isSpace) s))-}

calcular :: String -> Float
calcular s = if isEmpty(pop stk) then result else error "Stack not empty" 
    where 
        stk = foldl calc empty (words s)
        result = top stk
