import Data.List
import System.IO

-- < > <= >= == /=
-- && || not

doubleEvenNumber y = 
    if (y `mod` 2 /= 0)
        then y
        else y * 2

getClass :: Int -> String 
getClass n = case n of
    5 -> "Got to kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go away"

