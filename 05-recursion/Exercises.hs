-- subexercise 1
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- subexercise 2
sum' :: (Real a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- subexercise 3
replicate' :: Integer -> b -> [b]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' (n - 1) x

-- subexercise 4
take' :: Integer -> [b] -> [b]
take' _ [] = []
take' n (a:ax)
    | n <= 0 = []
    | otherwise = a : take' (n - 1) ax

-- subexercise 5
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (a:ax) = reverse' ax ++ [a]

-- subexercise 6
fib :: Integer -> Integer
fib 1 = 1
fib 0 = 0
fib n = fib (n - 1) + fib (n - 2)

-- subexercise 7
zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (a:ax) (b:bx) = (a, b) : zip' ax bx

-- subexercise 8
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (a:ax) =
    let
        lower = quicksort [x | x <- ax, x <= a]
        bigger = quicksort [x | x <- ax, x > a]
    in
        lower ++ [a] ++ bigger

-- subexercise 9
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' n (a:ax)
    | a == n = True
    | otherwise = elem' n ax

-- subexercise 10
power :: Integer -> Integer -> Integer
power _ 0 = 1
power x y = x * power x (y - 1)
