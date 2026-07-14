quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort(menor) ++ [x] ++ quicksort(maior)
  where
    maior = [a | a <- xs, a > x]
    menor = [a | a <- xs, a <= x]


