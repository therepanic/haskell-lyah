import Data.List (sort)
-- subexercise 1
circleArea :: Double -> Double
circleArea r = 3.14 * r^2

-- subexercise 2
swapPair :: (a, b) -> (b, a)
swapPair (a, b) = (b, a)

-- subexercise 3
safeDiv :: (Eq a, Fractional a) => a -> a -> Maybe a
safeDiv _ 0 = Nothing
safeDiv a b = Just (a / b)

-- subexercise 4
describeValue :: Show a => a -> String
describeValue s = "The value is: " ++ show s

-- subexercise 5
inRange :: Ord a => a -> a -> a -> Bool
inRange a b c = a >= b && a <= c

-- subexercise 6
parseNumbers :: [String] -> [Int]
parseNumbers a = [read b :: Int | b <- a]

-- subexercise 7
allEnumValues :: (Bounded a, Enum a) => [a]
allEnumValues = [minBound..maxBound]

-- subexercise 8
calcStats :: (Real a, Ord a) => [a] -> (a, Double, a, a)
calcStats a = let
    sumA = sum a
    avg  = realToFrac sumA / fromIntegral (length a)
    mn = minimum a
    mx = maximum a
    in
        (sumA, avg, mn, mx)

-- subexercise 9
compareThree :: Ord a => a -> a -> a -> (a, a, a)
compareThree a b c =
    let
        [x, y, z] = sort [a, b, c]
    in
        (x, y, z)
