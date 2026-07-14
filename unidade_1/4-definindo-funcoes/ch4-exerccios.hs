-- Exercícios resolvidos do Capítulo 4

-- (1)

halve :: [a] -> ([a], [a])
halve xs = (take half xs, drop half xs)
           where
             half = length xs `div` 2

halve' xs = splitAt (length xs `div` 2) xs


-- (2)

--(a)

third :: [a] -> a
third xs = head (tail (tail xs))

--(b)

third' xs = xs !! 2

--(c)

third'' (_:_:x:_) = x



-- (3)

safetail :: [a] -> [a]

--(a)Expressão condicional

safetail xs = if null xs then [] else tail xs

-- (b)Guarded equations

safetail' xs | null xs   = []
             | otherwise = tail xs

-- (c)Casamento de padrões

safetail'' []     = []
safetail'' (_:xs) = xs



-- (4)

(|||) :: Bool -> Bool -> Bool
True  ||| True  = True
True  ||| False = True
False ||| True  = True 
False ||| False = False

--False ||| False = False
--_     ||| _     = True

--False ||| a = a
--True  ||| _ = True

-- b (|||) c | b == c = b 
          -- | otherwise = True


-- (5)

(&&&) :: Bool -> Bool -> Bool
--(&&&) a b = if a then
--              if b then True
--              else False
--            else False

-- (6)

(&&&) a b = if a then b
            else False

-- (7)

mult :: Int -> Int -> Int -> Int    
mult = \x -> \y -> \z -> x*y*z
--mult = \x -> (\y -> (\z -> x*y*z))

-- (8)

luhnDouble :: Int -> Int
luhnDouble n | dn > 9 = dn - 9
             | otherwise = dn
             where dn = n + n
             
luhn :: Int -> Int -> Int -> Int -> Bool
luhn d1 d2 d3 d4 = (((luhnDouble d1) + d2 + (luhnDouble d3) + d4) `mod` 10) == 0


-- luhn 1 7 8 4

-- luhn 4 7 8 2
