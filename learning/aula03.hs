-------- Aula 03: Definições Locais --------

-- Área de Heron com where
areaHeron1 :: Float -> Float -> Float -> Float
areaHeron1 a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where
        s = (a+b+c)/2

-- Definindo uma função local
funcao :: Int -> Int
funcao y = outra a + outra y
    where
        a = y^2
        outra x = -x

-- Equação do 2o grau
eqGrau2 :: Int -> Int -> Int -> Int
eqGrau2 a b c
        | delta > 0 = 2
        | delta == 0 = 1
        | otherwise = 0
    where
        delta = b^2 - 4*a*c

-- Área do Cilindro
areaCil :: Float -> Float -> Float
areaCil r h = let areaLado = 2*pi*r*h
                  areaBase = pi*r^2
              in areaLado + 2*areaBase

-- Área de Heron com let
areaHeron2 :: Float -> Float -> Float -> Float
areaHeron2 a b c = let s = (a+b+c)/2
                   in sqrt(s*(s-a)*(s-b)*(s-c))
