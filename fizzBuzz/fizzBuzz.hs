divisible :: Integer -> Integer -> Bool
divisible x y = mod x y == 0

fizz :: Integer -> String
fizz x | divisible x 3 = "Fizz"
       | otherwise     = ""

buzz :: Integer -> String
buzz x | divisible x 5 = "Buzz"
       | otherwise     = ""

fizzBuzz :: Integer -> String
fizzBuzz x | ((fizz x) ++ (buzz x))  /= "" = (fizz x) ++ (buzz x) 
           | otherwise                     = show x

main :: IO()
main = mapM_ print (map fizzBuzz [1..100])