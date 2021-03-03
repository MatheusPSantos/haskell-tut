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