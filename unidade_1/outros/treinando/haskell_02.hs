chars :: [Char]
chars = "Olá, Mundo!"

multiply :: Float -> Float -> Float
multiply a b = a * b

matrix :: [[Double]]
matrix = [[6.7]]

pair :: a -> b -> (a, b)
pair a b = (a, b)

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

mult' :: (Num a) => a -> a -> a -> a
mult' x y z = x * y * z

add :: Int -> Int -> Int
add a b = a + b
