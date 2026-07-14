-- Exercícios resolvidos do Capítulo 5

import Data.List (find)
import Data.Char


-- (1)

sumsquares :: Integer
sumsquares = sum [x^2 | x <- [1..100]]




-- (2)

grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]

-- (3)

square :: Int -> [(Int, Int)]
square n = [(x,y) | (x,y) <- grid n n, x /= y]

-- (4) 

replicate' :: Int -> a -> [a]
replicate' n x = [x | _ <- [1..n]]


-- (5)
pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n] , x^2 + y^2 == z^2]

pyths' = \n -> [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- (6)
-- perfects :: Int -> [Int]
-- perfects n = [a | a <- [1..n], 
              -- a == let f = factors a in sum (take (length(f) - 1) f)]

perfects' :: Int -> [Int] 
perfects' n = [x | x <- [1..n], x == sum (factors x)]

factors :: Int -> [Int]
factors n = [x | x <- [1..n-1], n `mod` x == 0]


-- (7)

list1 :: [(Int,Int)]
list1 = [(x,y) | x <- [1,2], y <- [3,4]]

list2 :: [(Int,Int)]
list2 = concat [[(x, y) | y <- [3,4]] | x <- [1,2]]

-- (8)

positions :: Eq a => a -> [a] -> [Int]--
positions x xs =
   [i | i <- [0..(length xs - 1)], (find (==(x,i)) (zip xs [0..])) /= Nothing]


-- (9)

scalp :: (Num a) => [a] -> [a] -> a
scalp xs ys = sum [x*y | (x,y) <- zip xs ys] 

-- (10)

let2int :: Char -> Int 
let2int c = ord c - ord 'a'

int2let :: Int -> Char 
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char 
shift n c | isLetter c = int2let ((let2int (toLower c) + n) `mod` 26) 
          | otherwise = c

encode :: Int -> String -> String 
encode n xs = [shift n x | x <- xs]

-- faça a função decode

