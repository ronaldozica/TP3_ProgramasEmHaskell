linearizar :: [[Integer]] -> [Integer]
linearizar [] = []
linearizar (n:m) = n ++ linearizar m