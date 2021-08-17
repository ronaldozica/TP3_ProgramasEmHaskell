somaImpares :: [Integer] -> Integer
somaImpares [] = 0
somaImpares (n:m) 
    | ( (n `rem` 2) == 0 ) = somaImpares m  -- par: não soma n
    | otherwise = n + somaImpares m         -- ímpar: soma n