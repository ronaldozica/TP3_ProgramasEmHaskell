restanteLista :: Int -> Int -> [Integer] -> [Integer]
restanteLista n cont [] = []
restanteLista n cont (i:j)
    | (n > cont) = restanteLista n (cont+1) j
    | otherwise = [i] ++ restanteLista n cont j

reverteLista :: [Integer] -> [Integer]
reverteLista [] = []
reverteLista (i:j) = reverteLista j ++ [i]

removerFim :: Int -> [Integer] -> [Integer]
removerFim n [] = []         -- removerFim sem lista mantém vazio
removerFim 0 j = j           -- removerFim 0 posições mantém igual
removerFim n (i:j) = reverteLista (restanteLista n 0 (reverteLista (i:j)))