module Main where

main :: IO ()
main = do
  putStrLn "hello world"

-- Osa 2 Data and Types
-- Tehtävä Constructing and deconstructing data types

f1 :: (Int,Char,Bool) -> Char
f1 (numero,kirjain,totuus) = kirjain

f2 :: (a,b,c) -> Maybe b
f2 (a,b,c) = case (a,b,c) of
                 (_,v,_) -> Just v

-- Version 2 without maybe:
-- f2 :: (a,b,c) -> b
-- f2 (a,b,c) = b

f3 :: (a,(b,c,d),e) -> c
f3 (a, (b, c, d), e) = c

f4 :: [a] -> Maybe a
f4 x = case x of
              [] -> Nothing
              y:_ -> Just y
                
f5 :: Either Int String -> String
f5  x = case x of 
              Left _ -> "Not a String"
              Right y -> y

f6 :: Either a b -> Maybe b
f6 x = case x of
              Left _ -> Nothing
              Right y -> Just y

g1 :: Maybe a -> b -> (Either a b)
g1 x y = case x of
              Nothing -> Right y
              Just z -> Left z

g2 :: a -> b -> (a,b)
g2 x y = (x,y)

g3 :: a -> b -> Either a b
g3 x y = let 
          xx = Left x
          yy = Right y
         in xx
