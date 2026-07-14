-- forma (a)
safetail :: [a] -> [a]
safetail [] = []
safetail xs = tail xs

-- forma (b)
safetail' :: [a] -> [a]
safetail' xs = if null xs then [] else tail xs

-- forma (c)
safetail''' :: [a] -> [a]
safetail''' xs | null xs = []
               | otherwise = tail xs
