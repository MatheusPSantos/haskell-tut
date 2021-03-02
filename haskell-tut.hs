-- Comments
{--}

import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Float or Double
bigFloat = 3.999999 + 0.20000000000000000013123
-- Bool true or false
-- Char '
-- Tuple
--permanent value like variable
always5 :: Int
always5 = 5

-- Math functions
sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5/4
modEx = mod 5 4
modEx2 = 5 `mod` 4

negNumEx= 5 + (-4)

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

--- Built in math funcitons
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- logical operators

trueAndFalse = True && False
trueOrFalse :: Bool
trueOrFalse = True || False
notTrue = not(True)

