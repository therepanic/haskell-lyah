import Data.List (nub, intersperse, intercalate, transpose, foldl', partition, find, elemIndex)
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Math.Operations as MO
import qualified Math.Operations as MA

-- subexercise 1
uniqueChars :: (Ord a) => [a] -> [a]
uniqueChars = nub

-- subexercise 2
countOccurences :: (Ord a) => [a] -> M.Map a Int
countOccurences = foldr (\x acc -> M.insertWith (+) x 1 acc) M.empty

-- subexercise 3
formatList :: [String] -> String
formatList ax = '[' : intercalate ", " ax ++ "]"

-- subexercise 4
columnSums :: (Real a) => [[a]] -> [a]
columnSums a = foldr (\x acc -> sum x : acc) [] (transpose a)

-- subexercise 5
sumLarge :: (Integral a) => [a] -> a
sumLarge = foldl' (+) 0

-- subexercise 6
repeatEach :: [Int] -> [Int]
repeatEach = concatMap (\x -> replicate x x)

-- subexercise 7
splitOn :: (a -> Bool) -> [a] -> ([a], [a])
splitOn f ax = ((takeWhile (\x -> not (f x)) ax), (dropWhile (\x -> not (f x)) ax))

-- subexercise 8
splitBySign :: (Real a) => [a] -> ([a], [a], [a])
splitBySign ax =
    let
        (before, rest) = break (> 0) ax
    in
        case rest of
            [] -> (before, [], [])
            (y:ys) -> (before, [y], ys)

-- subexercise 9
findAndPosition :: (Eq a) => (a -> Bool) -> [a] -> (Maybe a, Maybe Int)
findAndPosition f ax =
    let
        el = find f ax
    in
        case el of
            Nothing -> (Nothing, Nothing)
            Just v -> (Just v, elemIndex v ax)

-- subexercise 10
commonLetters :: String -> String -> String
commonLetters xs ys = 
    let 
        sx = S.fromList xs
        sy = S.fromList ys
    in
        S.toList (S.intersection sx sy)

-- subexercise 11
-- created module
multiply' = MA.multiply 40 40
