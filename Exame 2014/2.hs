isVowel :: Char->Bool 
isVowel a  | a=='a' || a=='e' || a=='i' || a=='o' || a=='u' = True
           | otherwise = False

transforma :: String -> String
transforma a | isVowel (head a) = (head a):'p':head a:(transforma (tail a))
             | otherwise = transforma (tail a)