-------- Aula 04: Recursão -------

-- >> Teoria: Recursão normal
-- Resto
resto :: Int -> Int -> Int
resto a b
    | a < b = a
    | a == b = 0
    | otherwise = resto (a-b) b

-- >> Exercícios
-- Ex. 1: Produto
produto :: Int -> Int -> Int
produto a b
    | b == 0 = 0
    | otherwise = a + produto a (b-1)

-- Ex. 2: MDC
mdc :: Int -> Int -> Int
mdc x y
    | x > y = mdc (x-y) y
    | x < y = mdc y x
    | x == y = x


-- >> Teoria: Recursão em cauda
-- Potênciacia de 2 normal
pot2 :: Int -> Int
pot2 n
    | n == 0 = 1
    | n > 0 = 2 * pot2 (n-1)

-- Potência de 2 em cauda
pot2Cauda :: Int -> Int -> Int
pot2Cauda n acc
    | n == 0 = acc
    | n > 0 = pot2Cauda (n-1) (2*acc)

-- Fatorial em cauda
fatCauda :: Int -> Int -> Int
fatCauda n acc
    | n == 0 = acc
    | n > 0 = fatCauda (n-1) (n*acc)

-- Fibonacci normal
fib :: Int -> Int
fib x
    | x == 1 = 1
    | x == 2 = 1
    | otherwise = fib (x-1) + fib (x-2)

-- Fibonacci em cauda
fibCauda :: Int -> Int -> Int -> Int
fibCauda x a1 a2
    | x == 1 = a1
    | x == 2 = a2
    | otherwise = fibCauda (x-1) a2 (a1+a2)
