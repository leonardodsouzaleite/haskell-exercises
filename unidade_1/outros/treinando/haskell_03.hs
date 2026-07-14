chars :: a -> a
chars a = a

pair :: a -> b -> (a, b)
pair a b = (a, b)

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

mult' :: Int -> (Int -> (Int -> Int))
mult' x y z = (*) x ((*) y z)
