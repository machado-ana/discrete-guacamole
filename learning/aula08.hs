------- Aula 08: Funções de Alta Ordem -------

-- >> Teoria: Básico
-- Função dobra e quadrado
dobra :: Int -> Int
dobra n = n + n

quad :: Int -> Int
quad n = n * n

mapInt :: (Int -> Int) -> [Int] -> [Int]
mapInt f [] = []
mapInt f (h:t) = (f h):(mapInt f t)


-- >> Teoria: Filtros
-- Pares e ímpares
filtro :: (Int -> Bool) -> [Int] -> [Int]
filtro f [] = []
filtro f (h:t) = if (f h)
    then (h:(filtro f t))
    else (filtro f t)

pares :: Int -> Bool
pares x = (mod x 2 == 0)

impares :: Int -> Bool
impares x = (mod x 2 == 1)

-- Maior e menor
maior :: Int -> Int -> Bool
maior a b = (a > b)

menor :: Int -> Int -> Bool
menor a b = (a < b)

buscaLista :: (Int -> Int -> Bool) -> [Int] -> Int
buscaLista _ [] = -1
buscaLista _ (h:[]) = h
buscaLista f (h:t) = if (f h fCauda)
    then h
    else fCauda
        where fCauda = buscaLista f t

-- >> Exercícios
-- QuickSort com filtro
-- quickSort :: (Int -> Int -> Bool) -> [Int] -> [Int]
-- quickSort _ [] = []
-- quickSort menorLista [cab:cauda] = quickSort (maiorLista cab cauda)
--                                    ++ cab
--                                    ++ quickSort (maiorLista cab cauda)
