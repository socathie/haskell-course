-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

checkConsumptionLet :: Double -> Double -> Double -> [Char]
checkConsumptionLet consumption hours max =
    let  monthlyConsumption = consumption * hours * 30
    in
        if monthlyConsumption > max
            then "larger"
            else
                if monthlyConsumption < max
                    then "smaller"
                    else "equal"

checkConsumptionWhere :: Double -> Double -> Double -> [Char]
checkConsumptionWhere consumption hours max
    | monthlyConsumption > max = "larger"
    | monthlyConsumption < max = "smaller"
    | True = "equal"
    where 
        monthlyConsumption = consumption * hours * 30

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

checkConsumptionDifference :: Double -> Double -> Double -> [Char]
checkConsumptionDifference consumption hours max
    | monthlyConsumption > max = "larger by " ++ show (monthlyConsumption - max)
    | monthlyConsumption < max = "smaller by " ++ show (max - monthlyConsumption)
    | True = "equal"
    where 
        monthlyConsumption = consumption * hours * 30


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

quotient :: Double -> Double -> [Char]
quotient x y
    | x > y = if x /= 0 then show (y/x) else "Dividing by zero is undefined"
    | x < y = if y /= 0 then show (x/y) else "Dividing by zero is undefined"
    | True = "Dividing by zero is undefined"


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

f :: Double -> Double -> Double
f x y = 
    let
        prod = x*y
        quot = x/y
    in 
        sq prod + sq quot
        where
            sq x = x*x

g :: Double -> Double -> Double
g x y = 
    let sqProd = prod * prod where prod = x * y
    in sqProd + sqQuot
    where sqQuot = let quot = x/y in quot*quot