calculaDivisores :: Integer -> Integer -> Bool
calculaDivisores n 1 = True
calculaDivisores n divisor
    | ( (n `rem` divisor) == 0 ) = False
    | otherwise = calculaDivisores n (divisor-1)
    
primo :: Integer -> Bool
primo 0 = False
primo n = calculaDivisores n (n-1)