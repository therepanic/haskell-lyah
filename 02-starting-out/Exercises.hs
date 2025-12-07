-- subexercise 1
calc x y z = (x + y) * (z - x) / 2

-- subexercise 2
range :: (Integral a) => a -> a -> a -> (a, a, a)
range a b c = 
    let
        minimum = min a (min b c)
        maximum = max a (max b c)
    in
        (minimum, maximum, maximum - minimum)


-- subexercise 3
listStats list = (head list, last list, length list, sum list)

-- subexercise 4
swapFirstLast list = [last list] ++ drop 1 (init list) ++ [head list]

-- subexercise 5
sublist :: Int -> Int -> [a] -> [a]
sublist start end xs = take (end - start) (drop start xs)
middleThree list = let len = length list
    in sublist (div len 2) (len - div len 2) list

-- subexercise 6
evenSquares = [a * a | a <- [1..20], even a]

-- subexercise 7
fizzBuzz = [if (mod a 3 == 0) && (mod a 5 == 0) then "FizzBuzz" else if mod a 3 == 0 then "Fizz" else if (mod a 5 == 0) then "Buzz" else show a | a <- [1..30]]

-- subexercise 8
pairUp :: Integral b => [b] -> [b] -> [(b, b)]
pairUp x y = [(a,b) | (a, b) <- zip x y, even (a + b)]

-- subexercise 9
rightTriangles = [(a, b, c) | c <- [1..20], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c <= 50]

-- subexercise 10
removeDuplicates [] = []
removeDuplicates [x] = [x]
removeDuplicates (x:y:xs)
    | x == y = removeDuplicates (y:xs)
    | otherwise = x : removeDuplicates (y:xs)
