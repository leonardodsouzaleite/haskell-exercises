third :: [a] -> a
third xs = head (tail (tail xs))

first :: (a, b, c) -> a
first (x, y, z) = x

square :: (Num a) => a -> a
square x = x * x

safelast :: [a] -> Maybe a
safelast xs =
    if null xs
        then Nothing
        else Just (last xs)

length' :: [a] -> Int
length' xs = if null xs then 0 else 1 + length (tail xs)

safelast' :: [a] -> Maybe a
safelast' xs
    | null xs = Nothing
    | otherwise = Just (last xs)
