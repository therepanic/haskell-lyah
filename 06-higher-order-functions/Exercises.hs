-- subexercise 1
applyTwice :: (a -> a) -> a -> a
applyTwice f a = f (f a)

-- subexercise 2
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- subexercise 3
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

-- subexercise 4
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

-- subexercise 5
filter' :: (a -> Bool) -> [a] -> [a]
filter' f xs = foldr (\x acc -> if f x then x : acc else acc) [] xs

-- subexercise 6
maximum' :: (Ord a) => [a] -> a
maximum' (a:ax) = foldr (\x acc -> if x >= acc then x else acc) a ax

-- subexercise 7
reverse' :: [a] -> [a]
reverse' a = foldl (\acc x -> x : acc) [] a

-- subexercise 8
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' f a = foldr (\x acc -> if f x then x : acc else []) [] a

-- subexercise 9
collatzLength :: Integer -> Integer
collatzLength n =
    let
        helper n acc
            | n == 1 = acc + 1
            | even n = helper (div n 2) (acc + 1)
            | odd n = helper (n * 3 + 1) (acc + 1)
    in
        helper n 0

-- subexercise 10
oddSquareSum :: Integer
oddSquareSum = sum $ takeWhile (<10000) $ filter odd $ map (^2) [1..]

-- subexercise 11
sqrtTermsNeeded :: Int
sqrtTermsNeeded = length $ takeWhile (<1000) $ scanl (\acc x -> if acc > 1000 then -1 else acc + sqrt x) (0 :: Float) [1..]

-- subexercise 12
 -- fn x = ceiling (negate (tan (cos (max 50 x))))
fn = ceiling . negate . tan . cos . max 50