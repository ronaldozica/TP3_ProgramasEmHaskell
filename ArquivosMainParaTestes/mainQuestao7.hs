main :: IO()
main = do
print(distintos [1,2,4,2,5])   -- False
print(distintos [3,2,1])   -- True
print(distintos [0,2,1])   -- True
print(distintos [0,2,0])   -- False