module EXNQueens where

  -- Run the test
  testRun :: [[Int]]
  testRun = solve 8

  -- Solves the problem. Works only for 8 x 8 boards 
  -- right now. Prints out all possible solutions.
  solve :: Double -> [[Int]]
  solve koko
    | koko <= 1 = [[1],[2],[3],[4],[5],[6],[7],[8]]
    | otherwise = combined
      where 
        r1 = solve (koko / 2)
        r2 = solve (koko / 2)
        combined = combineSolutions r1 r2

  -- Check that given number is not on given list
  numberIsNotOnList :: Int -> [Int] -> Bool
  numberIsNotOnList _ [] = True
  numberIsNotOnList number (x:xs)
    | number == x = False 
    | otherwise = numberIsNotOnList number xs

  -- Check that list contains only unique numbers
  onlyUniques :: [Int] -> Bool
  onlyUniques [] = True
  onlyUniques (_:[]) = True
  onlyUniques (x:xs) 
    | (numberIsNotOnList x xs) == True = onlyUniques xs
    | otherwise = False

  -- Combine lists of solutions
  combineSolutions :: [[Int]] -> [[Int]] -> [[Int]]
  combineSolutions x y = case x of
    [] -> []
    xx:xxs -> (combineQueens xx y)++(combineSolutions xxs y)
  
  -- Combine two parts of chest board into one. Leaves out
  -- solutions where some queen threatens other queen. 
  combineQueens :: [Int] -> [[Int]] -> [[Int]]
  combineQueens x [] = [] 
  combineQueens x (y:ys) 
    | (onlyUniques(x++y)) = (x++y):combineQueens x ys
    | otherwise = combineQueens x ys

