module Examples where

data Bit = I | O deriving (Show,Eq)
type Binary = [Bit]

-- Write 5 examples of how incrementing should work
-- in the following list. First element of each pair
-- is the input and the second one is the first one
-- incremented by one.
incrementedByOne :: [(Binary,Binary)]
incrementedByOne = [([O],[I]), 
                    ([O,I],[I,I]), 
                    ([I,O,I],[O,I,I]), 
                    ([O,O,O,I],[I,O,O,I]), 
                    ([I],[O,I])]




-- Here is something that is just needed by the web exercise system. Please
-- leave it alone, ok?
isOne I=True;isOne O=False;bit True=I;bit False=O     


----------------------------------

module Examples where

    data Bit = I | O deriving (Show,Eq)
    type Binary = [Bit]
    
    -- Write 5 examples of how incrementing should work
    -- in the following list. First element of each pair
    -- is the input and the second one is the first one
    -- incremented by one.
    incrementedByOne :: [(Binary,Binary)]
    incrementedByOne = [([O],[I]), 
                        ([O,I],[I,I]), 
                        ([I,O,I],[O,I,I]), 
                        ([O,O,O,I],[I,O,O,I]), 
                        ([I],[O,I])]
    
    increment :: Binary -> Binary
    increment [] = [I]
    increment (x:xs)
      | x == O = I:xs
      | otherwise = O : (increment xs)
    
    -- Here is something that is just needed by the web exercise system. Please
    -- leave it alone, ok?
    isOne I=True;isOne O=False;bit True=I;bit False=O           
    
    ---------------------------------

module Examples where

    data Bit = I | O deriving (Show,Eq)
    type Binary = [Bit]
    
    -- Write 5 examples of how incrementing should work
    -- in the following list. First element of each pair
    -- is the input and the second one is the first one
    -- incremented by one.
    incrementedByOne :: [(Binary,Binary)]
    incrementedByOne = [([O],[I]), 
                        ([O,I],[I,I]), 
                        ([I,O,I],[O,I,I]), 
                        ([O,O,O,I],[I,O,O,I]), 
                        ([I],[O,I])]
    
    increment :: Binary -> Binary
    increment [] = [I]
    increment (x:xs)
        | x == O = I:xs
        | otherwise = O : (increment xs)
        
        
    fromBinary :: Binary -> Int
    fromBinary [] = 0
    fromBinary (x:xs)
        | x == O =  (fromBinary xs) * 2
        | otherwise = ((2 * (fromBinary xs)) + 1)
        
    
    -- Here is something that is just needed by the web exercise system. Please
    -- leave it alone, ok?
    isOne I=True;isOne O=False;bit True=I;bit False=O           
    
    
----------------------------


module Examples where

    data Bit = I | O deriving (Show,Eq)
    type Binary = [Bit]
    
    -- Write 5 examples of how incrementing should work
    -- in the following list. First element of each pair
    -- is the input and the second one is the first one
    -- incremented by one.
    incrementedByOne :: [(Binary,Binary)]
    incrementedByOne = [([O],[I]), 
                        ([O,I],[I,I]), 
                        ([I,O,I],[O,I,I]), 
                        ([O,O,O,I],[I,O,O,I]), 
                        ([I],[O,I])]
    
    increment :: Binary -> Binary
    increment [] = [I]
    increment (x:xs)
      | x == O = I:xs
      | otherwise = O : (increment xs)
      
      
    fromBinary :: Binary -> Int
    fromBinary [] = 0
    fromBinary (x:xs)
      | x == O =  (fromBinary xs) * 2
      | otherwise = ((2 * (fromBinary xs)) + 1)
      
    toBinary luku
      | luku < 1 = []
      | jaannos == 0 = O : toBinary (quot luku 2)
      | otherwise = I : toBinary (quot luku 2)
      where jaannos = (rem luku 2)
    
    -- Here is something that is just needed by the web exercise system. Please
    -- leave it alone, ok?
    isOne I=True;isOne O=False;bit True=I;bit False=O           
    
------------------------------

