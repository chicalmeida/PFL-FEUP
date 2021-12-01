dotprod::[Float]->[Float]->Float 

dotprod x y = sum([x*y|(x,y) <- zip x y])