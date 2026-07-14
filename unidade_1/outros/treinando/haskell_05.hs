varianciaP :: (Floating a) => a -> [a] -> a
varianciaP m xs = sum [(x - m) ^ 2 | x <- xs] / fromIntegral (length xs)

func1 :: (Num a) => a -> a -> a -> a
func1 x y z = x + y + z

func2 :: a -> a -> [a]
func2 x y = [x, y]

func3 :: (a -> b -> c) -> a -> b -> c
func3 f x y = f x y

factorial :: Int -> Int
factorial a = product [x | x <- [1 .. a]]

replicate' :: Int -> a -> [a]
replicate' n x = if n <= 0 then [] else [x] ++ replicate' (n - 1) x

somarQuadrados :: [Int] -> Int
somarQuadrados xs = sum [x ^ 2 | x <- xs, mod x 2 /= 0]
