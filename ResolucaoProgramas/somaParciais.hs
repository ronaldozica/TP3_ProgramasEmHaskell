somaLista :: [Integer] -> Integer
somaLista [] = 0
somaLista (n:m) = n + somaLista m

somaParciaisListaReversa :: [Integer] -> [Integer] -> [Integer]
somaParciaisListaReversa [] j = j
somaParciaisListaReversa (n:m) j = somaParciaisListaReversa m ([n + somaLista m] ++ j)

reverteLista :: [Integer] -> [Integer]
reverteLista [] = []
reverteLista (i:j) = reverteLista j ++ [i]

somaParciais :: [Integer] -> [Integer]
somaParciais [] = []
somaParciais (n:m) = somaParciaisListaReversa (reverteLista (n:m)) []