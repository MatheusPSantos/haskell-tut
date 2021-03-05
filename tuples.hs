import Data.List
import System.IO

randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith -- extract the first component of pair
bobsAge = snd bobSmith -- extract the second component of pair
names = ["Bobs", "Mar", "Tom", "Jerry"]
address = ["123 Maine", "234 Norht", "S67 West", "890 South"]
namesNAddress = zip names address -- out >> [("Bobs","123 Maine"),("Mar","234 Norht"),("Tom","S67 West"),("Jerry","890 South")]

