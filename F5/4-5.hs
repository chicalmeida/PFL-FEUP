data Set a = Empty -- conjunto vazio
            | Node a (Set a) (Set a) deriving Show-- elemento, sub-conjunto dos menores, sub-conjunto dos maiores
            

empty :: Set a
empty = Empty

member :: Ord a => a -> Set a -> Bool
member x Empty = False
member x (Node y left right)
        | x > y = member x right
        | x < y = member x left
        |otherwise = True

insert :: Ord a => a -> Set a -> Set a
insert x Empty = Node x Empty Empty
insert x (Node y left right)
        | x > y = Node y left (insert x right)
        | x < y = Node y (insert x left) right
        | otherwise = Node y left right

union :: Ord a => Set a -> Set a -> Set a
union a Empty = a
union Empty b = b
union (Node val left right) b = union left (union right res)
    where
        res= if member val b then b else insert val b

intersect :: Ord a => Set a -> Set a -> Set a
intersect _ Empty = Empty
intersect Empty _ = Empty
intersect a b = intersectAux a b Empty

intersectAux :: Ord a => Set a -> Set a -> Set a -> Set a
intersectAux Empty _ res = error "First set empty"
intersectAux a (Node val l r) res
    | member val a && not (member val res) = intersectAux a l (intersectAux a r (insert val res))
    | otherwise = intersectAux a l (intersectAux a r res)
intersectAux a Empty res = res

difference :: Ord a => Set a -> Set a -> Set a
difference a Empty = a
difference Empty _ = Empty
difference a b = differenceAux b a Empty

differenceAux :: Ord a => Set a -> Set a -> Set a -> Set a
differenceAux Empty _ res = error "First set empty"
differenceAux a (Node val l r) res
    | not (member val a || member val res) = differenceAux a l (differenceAux a r (insert val res))
    | otherwise = differenceAux a l (differenceAux a r res)
differenceAux a Empty res = res
