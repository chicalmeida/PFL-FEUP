import Data.List
newtype Conjunto a = Conj [a]

insert' :: Eq a => a -> Conjunto a -> Conjunto a
insert' a (Conj c) | elem a c = Conj c
                  | otherwise = Conj (a:c)    

remover :: Eq a => a -> Conjunto a -> Conjunto a
remover a (Conj c) = Conj (delete a c)

unir :: Eq a => Conjunto a -> Conjunto a -> Conjunto a
unir (Conj c) a = foldl (insert') a c

diferenca :: Eq a => Conjunto a -> Conjunto a -> Conjunto a
diferenca a (Conj c) = foldl (remover) a c

intersecao :: Eq a => Conjunto a -> Conjunto a -> Conjunto a
intersecao a (Conj c) = diferenca a diff 
    where 
        diff = diferenca a (Conj c)

--Não funciona