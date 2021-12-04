length_zip :: [a]->[(Int,a)]
--length_zip []=[]
--length_zip lss@(l:ls) = (length lss, l):length_zip ls

length_zip l = zip (reverse (take (length l) [1 ..])) l