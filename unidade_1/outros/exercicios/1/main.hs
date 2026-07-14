import Data.Char

grid :: Int -> Int -> [(Int, Int)]
grid x y = [(n, m) | n <- [0..x], m <- [0..y]]

replicate :: Int -> a -> [a]
replicate x a = [a | _ <- [1..x]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

factor :: Int -> [Int]
factor n = [a | a <- [1..n-1], n `mod` a == 0 ]

perfect :: Int -> [Int]
perfect a = [x | x <- [1..a], x == sum (factor x)]

escalar :: [Int] -> [Int] -> Int
escalar xs ys =  sum [a * b | (a, b) <- zip xs ys]

-- let :: Int -> Char
-- let n = chr(ord 'a' + n)
