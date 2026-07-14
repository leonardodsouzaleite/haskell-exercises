halve :: [a] -> ([a], [a])
halve xs = (take metade xs, drop metade xs)
  where
    metade = length xs `div` 2

halve' xs = splitAt (length xs `div` 2) xs
