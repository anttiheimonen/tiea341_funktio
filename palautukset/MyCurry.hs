module MyCurry where

    uncurry1 :: (a -> b -> c) -> (a,b) -> c
    uncurry1 = \f (x,y) -> f x y

    curry1 :: ((a, b) -> c) -> a -> b -> c
    curry1 = \f x y -> f(x,y)

