type Point = (Double,Double) -- coordenadas x, y

p = [(1.0,2.0),(-2.0,3.0),(3.0,4.0),(2.0,-3.0),(1.0,5.0),(5.0,6.0)]
boundingBox :: [Point] -> (Point, Point)
boundingBox l = (minimum l, maximum l)