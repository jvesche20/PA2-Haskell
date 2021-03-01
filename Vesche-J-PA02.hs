-- Intro. Functional Programming (MCS 3633).
-- Spring 2021
-- Jacob Vesche 000759071
-- Programming Problem # 02


-- main prints each functions results. 
main = do 

 print(qsort[345,8,5,6,879])

 print(last1 [1,2,8,567,5436456])
 print(last2 [1,2,8,34,55555])
 

 print(init1 [1,2234234,82,933])
 print(init2 [1,34,8,9222])


 
-- creates a function and adds g to the head of the list along with the head to l. It then goes through the where statement and checks to see the largest and smallest value and returns a sorted list
qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = (qsort g) ++ [x] ++ (qsort l)
  where
    g = [ i | i <- xs, i >= x ]
    l = [ i | i <- xs, i < x ]
 
 
 
 
-- last1 goes through the list using recursion and removes the first element till there is one element left which is the last element and that is what is returned. 
 
last1::[Int]->Int
last1 [x]=x
last1 (x:xs)=last1 xs
 
-- last 2uses the reverse function and reverses the list and gets the first element and returns it. 
last2 xs = head (reverse xs)
 
 
-- init1 function appends all the elements except the last to a new array using recursion. 
init1::[Int]->[Int]
init1 [x]=[]
init1 (x:xs)=x:init1 xs


-- init2 uses the take function. The take function needs the length of the list. take uses the length - 1 of the length of the list and creates a new list with the given length. It will remove the last element in the given list. 

init2 xs = take (length xs - 1) xs



  
  
  
  
  
  
  
