-- subexercise 1
factorial :: Int -> Int
factorial 0 = 1;
factorial n = n * factorial (n - 1)

-- subexercise 2
describeList :: [a] -> String
describeList [] = "empty"
describeList [x] = "singleton"
describeList (x:xs) = "longer"

-- subexercise 3
safeHead :: [a] -> Maybe a
safeHead xs = case xs of
    [] -> Nothing
    (x:_) -> Just x

safeTail :: [a] -> Maybe [a]
safeTail xs = case xs of
    [] -> Nothing
    (_:rest) -> Just rest

-- subexercise 4
bmiTell :: Double -> Double -> String
bmiTell w h =
    let
        bmi = w / h^2
        result 
            | bmi < 18.5 = "underweight"
            | bmi < 25 = "normal"
            | bmi < 30 = "overweight"
            | otherwise = "obese"
    in
        result

-- subexercise 5
bmiTell' :: Double -> Double -> String
bmiTell' w h
    | bmi < 18.5 = "underweight"
    | bmi < 25.0 = "normal"
    | bmi < 30.0 = "overweight"
    | otherwise = "obese"
    where
        bmi = w / h^2

-- subexercise 6
evenSquaresUnder :: Integer -> [Integer]
evenSquaresUnder n = [sq | a <- [1..n], let sq = a^2, sq < n]

-- subexercise 7
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (a,b) (c, d) = (a + c, b + d)

-- subexercise 8
firstThree :: [a] -> Maybe (a, a, a)
firstThree (x1:x2:x3:_) = Just (x1, x2, x3)
firstThree _ = Nothing

-- subexercise 9
grade :: Integer -> Char
grade x 
    | x < 0 || x > 100 = 'X'
    | x <= 100 && x >= 90 = 'A'
    | x <= 89 && x >= 80 = 'B'
    | x <= 79 && x >= 70 = 'C'
    | x <= 69 && x >= 60 = 'D'
    | otherwise = 'F'

-- subexercise 10
dayType :: String -> String
dayType x = case x of
    "Monday" -> "Weekday"
    "Tuesday" -> "Weekday"
    "Wednesday" -> "Weekday"
    "Thursday" -> "Weekday"
    "Friday" -> "Weekday"
    "Saturday" -> "Weekend"
    "Sunday" -> "Weekend"
    _ -> "Unknown"
