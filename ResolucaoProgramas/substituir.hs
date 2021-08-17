substituir :: Integer -> Integer -> [Integer] -> [Integer]
substituir n m [] = []
substituir n m (i:j) 
    | ( n == i ) = [m] ++ substituir n m j
    | otherwise = [i] ++ substituir n m j