main :: IO()
main = do
print(disjuntas [1,2,3] [5,4,6,0])  -- true
print(disjuntas [1,2,3] [5,4,6,1])  -- false, 1 em comum
print(disjuntas [1,2,3] [5,2,6,4])  -- false, 2 em comum 
print(disjuntas [1,2,3] [5,4,6,3])  -- false, 3 em comum
print(disjuntas [1,2,3,4,5,6,7,8] [9,9,9,9])  -- true
print(disjuntas [1,2,3,4,5,6,7,8] [1,2,3,9])  -- false
print(disjuntas [1,2,3,4,5,6,7,8] [9,9,9,3])  -- false