--------------
-- Lista 09 --
--------------

-- Ex. 1a
soma :: [Int] -> Int
soma [] = 0
soma (h:t) = h + soma t

-- Ex. 1b
nElem :: Int -> [Int] -> Int
nElem 0 (h:t) = h
nElem n (_:t) = nElem (n-1) t

-- Ex. 1c
addIni :: Int -> [Int] -> [Int]
addIni a lista = a:lista

-- Ex. 1d
addFim :: Int -> [Int] -> [Int]
addFim n [] = n:[]
addFim n (h:t) = h:(addFim n t)

-- Ex. 1e
addElem :: Int -> Int -> [Int] -> [Int]
addElem n 0 lista = n:lista
addElem n 0 (h:t) = h:(addElem n 0 t)
addElem n pos (_:t) = addElem n (pos-1) t
