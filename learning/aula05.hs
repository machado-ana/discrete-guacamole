------- Aula 05: Listas -------

-- >> Teoria: Operações com listas
-- Comprimento de uma lista
comp :: [Int] -> Int
comp [] = 0
comp (h:t) = 1 + comp t

-- Comprimento com guardas
comp2 :: [Int] -> Int
comp2 lista
    | null lista = 0 -- null -> True, caso []
    | otherwise = 1 + comp2 (tail lista)

-- Lista de cubos
cuboLista :: [Int] -> [Int]
cuboLista [] = []
cuboLista (h:t) = let cubo x = x*x*x
                  in cubo (h) : cuboLista (t)

-- >> Exercícios
-- Ex. 1: Soma de um vetor
somaVet :: [Int] -> Int
somaVet [] = 0
somaVet (h:t) = h + somaVet t

-- Ex. 2: Tem o caractere?
hasChar :: String -> Char -> Bool
hasChar [] ch = False
hasChar (h:t) ch
    | h == ch = True
    | otherwise = hasChar t ch

-- Ex. 3: Maior (minha solução)
maiorVet :: [Int] -> Int
maiorVet [] = -1
maiorVet (cabeca:cauda) = aux cauda cabeca
    where
        aux :: [Int] -> Int -> Int
        aux [] maior = maior
        aux (h:t) maior
            | h > maior = aux (t) h
            | otherwise = aux (t) maior

-- Ex. 3: Maior (solução professor)
maiorEl :: [Int] -> Int
maiorEl [] = -1
maiorEl (h:t) = if (h >= maiorCauda)
    then h
    else maiorCauda
        where
            maiorCauda = maiorEl t


-- >> Teoria: Retornando listas
-- Raizes
raizes :: Float -> Float -> Float -> [Float]
raizes a b c
    | delta < 0 = []
    | delta == 0 = [-b/(2*a)]
    | delta > 0 = [(-b + sqrt(delta))/(2*a), (-b - sqrt(delta))/(2*a)]
        where
            delta = b^2 - 4*a*c

-- >> Teoria: Listas por Compreensão
-- Multiplos
multiplos :: Int -> [Int]
multiplos n = [ n*x | x<-[1 .. 10] ]

-- Primos
ehPrimo :: Int -> Bool
ehPrimo n = if (length (divisores n) == 2)
    then True
    else False
    where
        divisores :: Int -> [Int]
        divisores n = [ x | x<-[1 .. n], mod n x == 0]

-- QuickSort
quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (cab:cauda) = quickSort [x | x<-cauda, x<cab]
                        ++ [cab]
                        ++ quickSort [x | x<-cauda, x>cab]
