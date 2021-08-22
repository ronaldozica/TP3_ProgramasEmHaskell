binario :: Integer -> [Integer]
binario 0 = []
binario n = binario (n `div` 2) ++ [n `rem` 2]