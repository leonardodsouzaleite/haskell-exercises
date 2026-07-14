-- Exercícios resolvidos do Capítulo 2

-- (1)

-- Respostas disponíveis nos slides da apresentação

-- (2)

n = a `div` length xs
    where
       a = 10
      xs = [1,2,3,4,5]


--(3)

last_2 xs = xs !! (length xs - 1) 

last_3 xs = head (reverse xs) 

-- Defina pelo menos mais uma forma para a função last

-- (4)

-- (2^3)*4 
-- (2*3)+(4*5) 
-- 2+(3*(4^5))

--(5)

init_2 xs = take (length xs - 1) xs

init_3 xs = reverse (tail (reverse xs))

-- Defina pelo menos mais uma forma para a função init

