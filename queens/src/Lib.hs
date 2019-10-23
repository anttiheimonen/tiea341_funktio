module Lib where

  koko = 8

  type Queen = (Int,Int)
  type Setup = [Queen]

  solution :: [[Int]]
  solution = [[1],[2],[3],[4]]

  combine :: [[Int]] -> [[Int]] -> [[Int]]
  combine x y = case x of
                  [xx] -> case y of
                      [yy] -> [xx, yy]

  -- Hyvä !!! Ei olekaan
  -- yhdista xs ys = map (\x -> (map (\y -> x++y) ys ) ) xs

  puhdista :: [[Int]] -> [[Int]]
  puhdista x = 

  yhdista :: [[Int]] -> [[Int]] -> [[Int]]
  yhdista x y = case x of
                      [] -> []
                      xx:xxs -> (yhdista2 xx y)++(yhdista xxs y)
  
  yhdista2 :: [Int] -> [[Int]] -> [[Int]]
  yhdista2 x [] = [] 
  yhdista2 x ys = case ys of
                      [] -> []
                      y:ys -> (x++y):yhdista2 x ys

  testimap2 = map (\x -> x + 5) [1,2,3]

  testi1 = yhdista [[1],[2],[3],[4]] [[1],[2],[3],[4]]