permut :: Eq a => [a] -> [[a]]
permut [] = [[]]
permut[x:xs] = [a:p | a <- x, p <- xs]
