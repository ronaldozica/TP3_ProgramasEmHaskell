existe :: Integer -> [Integer] -> Bool
existe n[] = False
existe n (m:x)
    | n == m = True
    | otherwise = existe n x

main :: IO()
main = do
print(existe 3 [1,4,3,2])