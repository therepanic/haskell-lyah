import Control.Monad (guard)
-- subexercise 1
safeDiv :: Integer -> Integer -> Maybe Integer
safeDiv _ 0 = Nothing
safeDiv a b = Just (a `div` b)

-- subexercise 2
safeCalc :: Integer -> Integer -> Integer -> Maybe Integer
safeCalc x y z = safeDiv x y >>= \f -> safeDiv f z

-- subexercise 3
safeCalc' x y z = do
    f <- safeDiv x y
    safeDiv f z

-- subexercise 4
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (a:_) = Just a

-- subexercise 5
firstChar :: Maybe String -> Maybe Char
firstChar s = do
    (x:_) <- s
    return x

-- subexercise 6
pairs :: [a] -> [b] -> [(a, b)]
pairs a b = a >>= \x -> b >>= \y -> [(x, y)]

pairs' a b = do
    x <- a
    y <- b
    return [(x, y)]

-- subexercise 7
evenPairs :: [(Integer, Integer)]
evenPairs = [1..10] >>= \x -> [1..10] >>= \y -> guard(even (x + y)) >>= \_ -> [(x, y)]
evenPairs' = do
    x <- [1..10]
    y <- [1..10]
    guard(even (x + y))
    return [(x, y)]

-- subexercise 8
diceSums :: [Integer]
diceSums = [1..6] >>= \a1 -> [1..6] >>= \a2 -> [(a1 + a2)]

-- subexercise 9
-- because we throw x maybe via return and got the same result as simple fx

-- subexercise 10
in2 :: (Int, Int) -> [(Int, Int)]
in2 (a1, a2) = do
    x <- [-1, 1]
    y <- [-1, 1]
    return (a1 + x, a2 + y)
