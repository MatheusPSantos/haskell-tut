import Data.List
import System.IO

-- create an function to get an name from console
main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn("Hello, " ++ name)

-- create type declaration
addMe :: Int -> Int -> Int -- run :t addMe in ghci

-- funcName param1 param2 = operations (returned value)
addMe x y = x + y

sumMe x y = x + y -- this function will acept float, int, ...

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You cant vote"
whatAge 18 = "You can drive"
whatAge 21 = "You're an adult"
whatAge x = "Nothin important"

-- recursion
factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n -1)
