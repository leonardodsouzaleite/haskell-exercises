last' :: [a] -> a
last' xs = head (reverse xs)

safeTail :: [a] -> [a]
safeTail xs =
    if null xs
        then []
        else tail xs

firstSquare :: (Num a, Enum a) => a -> a
firstSquare xs = sum [x ^ 2 | x <- [1 .. xs]]

perfect :: (Integral a) => a -> [a]
perfect x = [a | a <- [1 .. x - 1], a == sum [b | b <- [1 .. a - 1], a `mod` b == 0]]

produtoEscalar :: (Num a) => [a] -> [a] -> a
produtoEscalar xs ys = sum [a * b | (a, b) <- zip xs ys]

exercicio :: Int -> Int -> Int
exercicio a b = a + b

somaDez :: Int -> Int
somaDez a = a + 10

divideDois :: Int -> Int
divideDois a = a `div` 2

maiorCem :: Int -> Bool
maiorCem a = a > 100

-- Linhas em branco limpas evitam erros de escopo no interpretador
init_2 :: [a] -> [a]
init_2 xs = take (length xs - 1) xs

luhnDouble :: Int -> Int
luhnDouble a =
    if a * 2 > 9
        then (a * 2) - 9
        else a * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1 .. n], y <- [1 .. n], z <- [1 .. n], x ^ 2 + y ^ 2 == z ^ 2]
