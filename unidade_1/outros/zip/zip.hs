pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)

count :: Char -> [Int] -> Int
count x xs = lenght [x' | x' <- xs, x == x']
