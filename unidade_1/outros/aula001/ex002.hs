third :: [a] -> a
third (_:_:x:_) = x

third' :: [a] -> a
third' xs = if length xs >= 3
            then xs !! 2
            else error "A lista possuí menos de 3 elementos!!"
