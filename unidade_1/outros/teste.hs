power :: (Num a, Integral b) => a -> b -> a
power _ 0 = 1
power a b = a * power a (b - 1)

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
