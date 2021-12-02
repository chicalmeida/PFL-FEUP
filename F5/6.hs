module Map (Map,
empty, insert', Map.lookup') where

data Map k v = Empty -- ^ tabela vazia
            | Node k v (Map k v) (Map k v) -- ^ chave, valor e sub-árvores

empty :: Map k v
empty = Empty

insert' :: Ord k => k -> v -> Map k v -> Map k v
insert' x v Empty = Node x v Empty Empty
insert' x v (Node y u l r)
        | x > y = Node y u l (insert' x v r)
        | x < y = Node y u (insert' x v l) r
        | otherwise = Node x v l r

lookup' :: Ord k => k -> Map k v -> Maybe v
lookup' x Empty = Nothing -- não encontrou
lookup' x (Node y v l r)
        | x > y = lookup' x r
        | x < y = lookup' x l
        | otherwise = Just v -- encontrou