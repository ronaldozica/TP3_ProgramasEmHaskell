potencia :: Integer -> Integer -> Integer
potencia n 0 = 1
potencia n x = n * potencia n (x-1)