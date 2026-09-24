-- Tuplas
type Ponto = (Float, Float)

dist :: Ponto -> Ponto -> Float
dist (x1, y1) (x2, y2) = sqrt ((quadDif x1 x2) + (quadDif y1 y2))
    where
        quadDif a b = (a-b)^2

-- Funcoes de Alta Ordem
dobra :: Int -> Int
dobra n = n+n

quadra :: Int -> Int
quadra n = n*n
-- dobraLst :: [Int] -> [Int]
-- dobraLst [] = []
-- dobraLst (h:t) = (dobra h):(dobraLst t)

mapInt :: (Int -> Int) -> [Int] -> [Int]
mapInt f [] = []
mapInt f (h:t) = (f h):(mapInt f t) 


-- Funcao de Alta Ordem usando filtro
ehPar :: Int -> Bool
ehPar n = (mod n 2 == 0)

filtro :: (Int -> Bool) -> [Int] -> [Int]
filtro p [] = []
filtro p (h:t) = if (p h)
    then h:(filtro p t)
    else filtro p t
