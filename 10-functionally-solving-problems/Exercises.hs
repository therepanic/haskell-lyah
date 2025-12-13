import Data.List(foldl')

-- reverse polish notation calculator
solveRPN :: (Fractional a, Read a) => String -> a
solveRPN s = head (foldl' helper [] (words s))
    where
        helper (x:y:yx) "+" = (x + y) : yx
        helper (x:y:yx) "-" = (x - y) : yx
        helper (x:y:yx) "*" = (x * y) : yx
        helper (x:y:yx) "/" = (x / y) : yx
        helper xs n = read n : xs
