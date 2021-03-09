import Data.List
import System.IO

data BaseballPlayer
  = Pitcher -- definition of type
  | Catcher
  | Infielder
  | Outfield
  deriving (Show)

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOf = print (barryBonds Outfield)

-- custom types

data Customer = Customer String String Double
  deriving (Show)

tomSmith :: Customer
tomSmith = Customer "Tmo smith" "123 Main" 20.04

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

-- another data type
data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beats Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

-- shape type

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs $x2 - x) * (abs $y2 - y) -- (abs (x2 - x)) * (abs (y2 - y))

sumValue = putStrLn (show (1 + 2))

sumValue2 w y = putStrLn . show $ w + y

areaOfCircle = area (Circle 50 60 20)

areaOfRect = area $ Rectangle 10 10 100 100

-- type classes
-- gonna correspond to set of types which have certain operations defined for them

data Employee = Employee
  { name :: String,
    position :: String,
    idNum :: Int
  }
  deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1}

pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 2}

isSamPam = samSmith == pamMarx

samSmithData = show samSmith

data ShirtSize = S | M | L

instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Small"
  show M = "Medium"
  show L = "Large"
  

smallAvail = S `elem` [S, M, L]

theSize x = show x