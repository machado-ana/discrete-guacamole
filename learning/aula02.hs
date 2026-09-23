-------- Aula 02: Condicionais --------

-- >> Teoria
-- Maior com if then else
maior1 :: Int -> Int -> Int
maior1 a b = if a >= b
    then a
    else b

-- Maior com guardas
maior2 :: Int -> Int -> Int
maior2 a b
    | a > b = a
    | b > a = b
    | otherwise = 0

-- Fatorial sem guardas
fat1 :: Int -> Int
fat1 0 = 1
fat1 n = n * fat1(n-1)

-- Fatorial usando guardas
fat2 :: Int -> Int
fat2 n
    | n == 0 = 1
    | otherwise = n * (fat2 (n-1))

-- >> Exercicios
-- Ex. 1: Par
ehPar :: Int -> Bool
ehPar x = if (mod x 2 == 0)
    then True
    else False

-- Ex. 2: Maiusculo?
charcase :: Char -> String
charcase ch
    | (ch >= 'a' && ch <='z') = "Minusculo"
    | (ch >= 'A' && ch <='Z') = "Maiusculo"
    | otherwise = "Nao eh letra"

-- Ex. 3: Funções
funcao :: Int -> Int -> Int -> Int
funcao a b c
    | a == 0 = b*b + 3*c
    | a == 1 = 2*c*c - 3*c
    | a == 2 = 3*c - b*b
    | otherwise = 0
