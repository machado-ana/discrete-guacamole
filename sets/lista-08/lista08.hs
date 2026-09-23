-------- Lista 08: Linguagem Haskell -------

-- Ex. 1: Resto
resto :: Int -> Int -> Int
resto a b
    | (a == 0) = 0
    | (a < b) = a
    | otherwise = resto (a-b) b

-- Ex. 2: Quociente
quociente :: Int -> Int -> Int
quociente a b
    | a < b = 0
    | otherwise = 1 + (quociente (a-b) b)

-- Ex. 4: Quociente Cauda --
