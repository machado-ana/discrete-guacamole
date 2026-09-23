-------- Aula 01: Introdução --------

-- >> Teoria
-- Primeira funcao em Haskell
polinomio :: Int -> Int
polinomio x = x*x + 10*x + 2

-- Quadrado de inteiro
quadrado :: Int -> Int
quadrado x = x*x

-- Soma de floats
soma :: Float -> Float -> Float
soma a b = a + b

-- Triplica
triplica :: Int -> Int
triplica n = 3*n

-- >> Exercícios
-- Ex. 1: Circulo
areaCirc :: Float -> Float
areaCirc r = pi * r*r

-- Ex. 2: Perimetro
perimetroCirc :: Float -> Float
perimetroCirc r = 2 * pi * r

-- Ex. 3: Hipotenusa
hipotenusa :: Float -> Float -> Float
hipotenusa a b = sqrt (a*a + b*b)

-- Ex. 4: Diferenca da área
difCirc :: Float -> Float -> Float
difCirc r1 r2 = abs((areaCirc r1)-(areaCirc r2))
