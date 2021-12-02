data Arv a = Vazia | No a (Arv a) (Arv a)
        deriving (Show)

inserir :: Ord a => a -> Arv a -> Arv a
inserir x Vazia = No x Vazia Vazia
inserir x (No y esq dir)
    | x==y = No y esq dir -- já ocorre; não insere
    | x<y = No y (inserir x esq) dir -- insere à esquerda
    | x>y = No y esq (inserir x dir) -- insere à direita

construir :: Ord a => [a] -> Arv a
construir [] = Vazia
construir (x:xs) = inserir x (construir xs)

arv= construir [21,2,46,15,8,4,89,7]

--4.7
sumArv::Num a => Arv a -> a
sumArv Vazia = 0
sumArv (No a av1 av2) = sum [a, sumArv av1, sumArv av2]

--aula teorica
listar :: Arv a -> [a]
listar Vazia = []
listar (No a esq dir) = listar esq ++ [a] ++ listar dir

--4.8
listardec :: Arv a -> [a]
listardec Vazia = []
listardec (No a esq dir) = reverse(listar (No a esq dir))

--4.9
nivel :: Int->Arv a->[a]
nivel _ Vazia = []
nivel 0 (No a _ _) = [a]
nivel n (No a esq dir) = nivel (n-1) esq ++ nivel (n-1) dir

--4.10
mapArv :: (a->b)->Arv a->Arv b
mapArv f Vazia = Vazia
mapArv f (No a esq dir) = No (f a) (mapArv f esq) (mapArv f dir)

--4.11
--ver inserir e construir em cima

--4.12
--a
maisEsq :: Arv a -> a
maisEsq (No x Vazia _) = x
maisEsq (No _ esq _) = maisEsq esq

maisDir :: Arv a -> a
maisDir (No x _ Vazia) = x
maisDir (No _ _ dir) = maisDir dir

--b
removerMaisDir :: Ord a =>  Arv a -> Arv a
removerMaisDir (No x esq dir) | x == maisDir esq = Vazia
                              | otherwise = No x esq (removerMaisDir dir)