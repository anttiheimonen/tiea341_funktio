module EXBuildingData where

newtype Meter = M Double 
  deriving (Eq,Ord,Show)

type Length = Int

data Vector2 a = V2 a a 
  deriving (Eq,Show)

data OneOrTwo a b = This a | That b | These a b
  deriving (Eq,Show)

data Submission 
  = S {student :: String, content :: String, date :: (Int,Int,Int)}
  deriving (Eq,Show)

asMeters :: Double -> Meter
asMeters x = M x

fromMeters :: Meter -> Double
fromMeters x = case x of
                  M z -> z

asLength :: Int -> Length
asLength x = x

mkVector :: Int -> Int -> Vector2 Int
mkVector x y = V2 x y

combine :: Vector2 Int -> Maybe (Vector2 Int) -> OneOrTwo Int Bool
combine (V2 x1 y1) z = case z of 
                  Nothing -> These (x1+y1) False
                  Just (V2 x2 y2) -> These (x1+y1+x2+y2) True

combine3 :: Vector2 Int -> Maybe Bool -> Maybe String 
              -> OneOrTwo Int (OneOrTwo Bool String)
combine3 (V2 x1 x2) y z = 
  case y of
    Just yy -> case z of
      Just zz -> These (x1+x2) (These yy zz)
      Nothing -> These (x1+x2) (This yy) 
    Nothing -> case z of
      Just zz -> These (x1+x2) (That zz)
      Nothing -> This (x1+x2)

submitDay :: Submission -> Int
submitDay (S _ _ (day,_,_)) = day

getOther :: OneOrTwo a b -> Maybe b 
getOther x = case x of 
            This _ -> Nothing
            That y -> Just y
            These _ y -> Just y