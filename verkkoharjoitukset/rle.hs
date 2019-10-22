module Exercise where
import Data.List
import Data.Word                    -- .. different lengths of integers
import Data.Char (ord,chr)          -- .. conversion between char and int

encode :: String -> [(Char,Word8)]
encode [] = []
encode (x:[]) = [(x,1)]
encode (x:xs)
  | (x == fst edellinen && (snd edellinen) >= 255) = (x , (snd edellinen) + 1) : tail edelliset
  | otherwise = (x,1) : edelliset
  where edelliset = encode xs
        edellinen = head edelliset



decode :: [(Char,Word8)] -> String
decode [] = ""
decode (x:xs) = replicate (fromIntegral (snd x)) (fst x) ++ decode xs
