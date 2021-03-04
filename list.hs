import Data.List
import System.IO

-- List
primeNumbers = [1,3,5,7,11]

morePrimes = primeNumbers ++ [13,17]

favNumbers = 2 : 7 : 8 : 66 : []

multList = [[3,5,7], [11,13,17]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

reversePrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2

lastPrime = last morePrimes2
-- except the last value in the list
primeInit = init morePrimes2

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes

-- check if a certain value is in the list
is7InList = 7 `elem` morePrimes2

-- get min and max value in the list
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList = [2,3,5]
proPrimes = product newList -- product between list elems

-- generate list
zeroToTen = [0..10]

evenList = [2,4..20]

letterList = ['H', 'a', 's', 'k', 'e', 'l', 'l']
otherletterList = ['A', 'M' ..'Z']

-- generate infinite list
infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 10 (cycle [1,2,4])

listTimes2 = [x * 2 | x <- [1..10]]

listTimes3 = [x * 3 | x <- [1..20], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort [9,3,4,5,612,7,0,87,9,1]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,0,213]
sumOfLists2 = zipWith (+) [6,7,8,9,0,213] [1,2,3,4,5]
listBiggerThen5  = filter(>5) morePrimes
evensUpTo20 = takeWhile (<=20) [2,4..]
multOfList = foldl (*) 1 [2,3,4,5]
multOfListRight = foldr (*) 1 [2,3,4,5]
pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]