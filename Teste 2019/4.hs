zip3 :: [a]->[b]->[c]->[(a,b,c)]
zip3 a b c = [(x,y,z)|(x,(y,z))<-zip a (zip b c)]