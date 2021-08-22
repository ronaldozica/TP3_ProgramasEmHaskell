main :: IO()
main = do
print(primo 2)   -- True
print(primo 3)   -- True
print(primo 17)   -- True
print(primo 29)   -- True
print(primo 101)   -- True
print(primo 100)   -- False
print(primo 10)   -- False
print(primo 0)   -- False