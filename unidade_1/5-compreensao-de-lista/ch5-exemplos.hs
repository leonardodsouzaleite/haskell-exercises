-- Exemplos do Capítulo 5
import Data.List (nub)


concatena :: [[a]] -> [a]
concatena xss = [x | xs <- xss, x <- xs]


factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]


prime :: Int -> Bool
prime n = factors n == [1,n]


primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys


pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)


sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]


positions :: Eq a => a -> [a] -> [Int]
positions x xs =
   [i | (x',i) <- zip xs [0..], x == x']


count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

fqc :: String -> [(Char,Int)]
fqc xs = [ (ch, count ch xs) | ch <- (nub xs)]
        

--permutações

permut :: Eq a => [a] -> [[a]]
permut [] = [[]]
permut (x:xs) = [a:p | a <- (x:xs), p <- permut xs]