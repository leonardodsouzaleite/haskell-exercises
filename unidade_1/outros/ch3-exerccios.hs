-- Exercícios resolvidos do Capítulo 3

-- (1)

-- ['a','b','c'] :: [Char]

-- ('a','b','c') :: (Char, Char, Char)

-- [(False,'0'),(True,'1')] :: [(Bool, Char)]

-- ([False,True],['0','1']) :: ([Bool], [Char])

-- [tail,init,reverse] :: [[a] -> [a]]

-- (2)

bools = [False,True]

nums = [[1,2],[3,4],[5,6]]

add x y z = x+y+z

copy x = (x,x)

apply f x = f x

-- Existem muitas outras definições para bools, nums e add

-- (3)

second :: [a] -> a
second xs = head (tail xs)

swap :: (b, a) -> (a, b)
swap (x,y) = (y,x)

pair :: a -> b -> (a, b)
pair x y = (x,y)

double :: Num a => a -> a
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (t -> t) -> t -> t
twice f x = f (f x) 

-- (4)

-- (5)

   -- Não é viável que os tipos de funções sejam instâncias da classe "Eq" porque determinar se duas funções são iguais é, em geral, indecidível. Seria necessário provar que duas funções, em geral, computam um mesmo mapeamento, o que é indecidível, ou comparar seus resultados para todas as entradas possíveis, o que muitas vezes é impossível devido à vastidão do espaço de entrada e aos domínios potencialmente infinitos.

   -- Isso é viável em casos muito específicos:

          -- + Quando o domínio da função é finito e pequeno o suficiente para ser comparado exaustivamente.

          -- + Quando as funções são simples o suficiente para serem comparadas diretamente.


prod1 []     = 1
prod1 (x:xs) = (*) x (prod1 xs)

foldr' f v []     = v
foldr' f v (x:xs) = f x (foldr' f v xs)

prod2 xs = foldr' (*) 1 xs

