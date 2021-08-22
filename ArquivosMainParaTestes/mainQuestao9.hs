main :: IO()
main = do
print(palindromo [1,2,3,4,3,2,1])   -- True
print(palindromo [1,2,2,4,3,2,1])   -- False
print(palindromo [])                -- False?