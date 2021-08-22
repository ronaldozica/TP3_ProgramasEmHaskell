calculaSomaDivisores :: Integer -> Integer -> Integer
calculaSomaDivisores n 0 = 0
calculaSomaDivisores n divisor
    | ( (n `rem` divisor) == 0 ) = divisor + calculaSomaDivisores n (divisor-1)
    | otherwise = calculaSomaDivisores n (divisor-1)
    
perfeito :: Integer -> Bool
perfeito 0 = False
perfeito n
    | (n == calculaSomaDivisores n (n-1)) = True
    | otherwise = False