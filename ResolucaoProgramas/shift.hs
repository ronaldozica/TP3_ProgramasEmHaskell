shiftLista :: Int -> Int -> [Integer] -> [Integer]
shiftLista n cont [] = []
shiftLista n cont (i:j)
    | (cont >= n) = [i] ++ shiftLista n (cont+1) j
    | otherwise = shiftLista n (cont+1) j

restanteLista :: Int -> Int -> [Integer] -> [Integer]
restanteLista n cont [] = []
restanteLista n cont (i:j)
    | (n > cont) = [i] ++ restanteLista n (cont+1) j
    | otherwise = []

shift :: Int -> [Integer] -> [Integer]
shift n [] = []         -- shift sem lista mantém vazio
shift 0 j = j           -- shift 0 posições mantém igual
shift n (i:j) = shiftLista n 0 (i:j) ++ restanteLista n 0 (i:j)