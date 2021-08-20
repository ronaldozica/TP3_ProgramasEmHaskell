intercala :: Int -> [Integer] -> [Integer] -> [Integer]
intercala cont i [] = i
intercala cont [] j = j
intercala cont (i:j)(n:m)
    | (cont == 0) = 
    if(i < n) 
        then [i] ++ intercala 1 j (n:m)
        else [n] ++ intercala 2 (i:j) m
    | otherwise =
    if(cont == 1) 
        then [n] ++ intercala 0 (i:j) m
        else [i] ++ intercala 0 j (n:m)

intercalar :: [Integer] -> [Integer] -> [Integer]
intercalar [][] = []
intercalar []j = j
intercalar i[] = i
intercalar (i:j)(n:m) = intercala 0 (i:j) (n:m)