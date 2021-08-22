reverteLista :: [Integer] -> [Integer]
reverteLista [] = []
reverteLista (i:j) = reverteLista j ++ [i]

logicaTrocar :: Integer -> [Integer]
logicaTrocar 0 = []
logicaTrocar n
    | n > 100 = [100] ++ logicaTrocar (n-100)
    | n > 50 = [50] ++ logicaTrocar (n-50)
    | n > 10 = [10] ++ logicaTrocar (n-10)
    | n > 5 = [5] ++ logicaTrocar (n-5)
    | otherwise = [1] ++ logicaTrocar (n-1)

trocar :: Integer -> [Integer]
trocar n = reverteLista (logicaTrocar n)