data Set a = Empty | Node a (Set a) (Set a)

--a
insert :: Ord a=> a->Set a->Set a
insert x Empty = Node x Empty Empty
insert x (Node y esq dir)
        | x==y = Node y esq dir -- já ocorre; não insere
        | x<y = Node y (insert x esq) dir -- insere à esquerda
        | x>y = Node y esq (insert x dir) -- insere à direita
        | otherwise = Node y esq dir 

--b
exists :: (a -> Bool) -> Set a -> Bool
exists f Empty = False 
exists f (Node a Empty Empty) = f a
exists f (Node a esq dir) = f a || exists f esq || exists f dir
