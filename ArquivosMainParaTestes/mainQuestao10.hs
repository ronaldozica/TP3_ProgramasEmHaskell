main :: IO()
main = do
print(somaParciais [1,2,3,4])       -- [1,3,6,10]
print(somaParciais [2,4,6,8])       -- [2,6,12,20]
print(somaParciais [10,20,30,40])   -- [10,30,60,100]