reverteLista :: [Integer] -> [Integer]
reverteLista [] = []
reverteLista (i:j) = reverteLista j ++ [i]

palindromo :: [Integer] -> Bool
palindromo [] = False
palindromo (n:m)
    | ( (n:m) /= reverteLista (n:m) ) = False
    | otherwise = True