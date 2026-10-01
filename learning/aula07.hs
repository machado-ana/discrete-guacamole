------- Aula 07: Casamento de Padroes -------

-- >> Teoria: Casamento de Padroes
-- Padroes
padroes :: Int -> String
padroes x = "Nao esta entre 1 e 3!"
padroes 1 = "Um!"
padroes 2 = "Dois!"
padroes 3 = "Tres!"

-- Comprimento
padroes2 :: [Int] -> Int
padroes2 [] = 0
padroes2 (_:t) = 1 + padroes2 t

-- Usando uma 4-upla
type Tupla4 = (Int, Int, Int, Int)
padroes3 :: Tupla4 -> String
padroes3 (_, _, _, fourth)
    | (fourth>10) = "Maior que 10."
    | otherwise = "Menor que 10."

-- >> Exercicios
-- Ex. 1: Reescrita de uma funcao
opp :: (Int, (Int, Int)) -> Int
opp (a, (b, c))
    | a == 1 = b + c
    | a == 2 = b - c
    | otherwise = 0

opp2 :: (Int, (Int, Int)) -> Int
opp2 (1, (a, b)) = a + b
opp2 (2, (a, b)) = a - b
opp2 _ = 0
