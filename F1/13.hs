safetail :: [a]->[a]

--safetail [] = []
--safetail l = tail l

safetail a = if null a then [] else tail a