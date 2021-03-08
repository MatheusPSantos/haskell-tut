import Data.List
import System.IO

-- create an function to get an name from console
main = do
  putStrLn "What's your name?"
  name <- getLine
  putStrLn ("Hello, " ++ name)

-- create type declaration
addMe :: Int -> Int -> Int -- run :t addMe in ghci

-- funcName param1 param2 = operations (returned value)
addMe x y = x + y

sumMe x y = x + y -- this function will acept float, int, ...

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You cant vote"
whatAge 18 = "You can drive"
whatAge 21 = "You're an adult"
whatAge x = "Nothin important"

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n -1)

prodFact n = product [1 .. n] -- factorial easy

isOdd :: Int -> Bool
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven n = n `mod` 2 == 0

-- Guards
whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age > 6) && (age <= 10) = "Elementary School"
  | (age > 10) && (age <= 14) = "Middle school"
  | (age > 14) && (age <= 18) = "high Scholl"
  | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible batting average"
  | avg <= 0.250 = "Average player"
  | avg <= 0.280 = "Your doing prety good"
  | otherwise = "You're a superstar"
  where
    avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x : []) = "You list starts with " ++ show x
getListItems (x : y : []) = "You list contains " ++ show x ++ " and " ++ show y
getListItems (x : xs) = "The 1st item is " ++ show x ++ " and the rest are" ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x : xs) = "The first letter in " ++ all ++ " is " ++ [x]

-- using map
times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1, 2, 3, 4, 56, 870]

-- recursive
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x : xs) = times4 x : multBy4 xs -- x is the first list item an xs is the rest of list items

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x : xs) (y : ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

doMult :: (Int -> Int) -> Int -- passing function as param
doMult func = func 3

num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int) -- returing func
getAddFunc x y = x + y

add3 = getAddFunc 3

fourPlus3 = add3 4

threePlusList = map add3 [1,2,3,4]
