-------- Cap. 3: Linguagem Haskell -------

-- Ex. 01: Primeira função em Haskell
quadrado :: Int -> Int
quadrado n = n * n

-- Ex. 02: Utilizando guardas
maiorGuarda :: Int -> Int -> Int
maiorGuarda a b
    | a > b = a
    | b > a = b
    | otherwise = 0

-- Ex. 03: Utilizando if/else
maiorIf :: Int -> Int -> Int
maiorIf a b  = if a >= b
    then a
    else b

-- Ex. 04: Caracteres
maiusculo :: String -> Bool
maiusculo [] = True
maiusculo (prim:cauda)
    | (prim >= 'a' && prim <= 'z') = False
    | otherwise = maiusculo cauda

-- Ex. 05: Casamento de padrões
funcao :: Int -> Int -> Int -> Int
funcao 1 _ _ = 10
funcao _ 2 _ = 20
funcao _ _ 3 = 30
funcao _ _ _ = 0

-- Ex. 06: Novos operadores
