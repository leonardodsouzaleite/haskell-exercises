factors :: Int -> [Int]
factors n = [x | x <- [2..n], mod n x == 0]

primo :: Int -> Bool
primo a = factors a == [a]

primos :: Int -> [Int]
primos n = [x | x <- [2..n], primo x]
