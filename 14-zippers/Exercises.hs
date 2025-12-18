import Data.List (foldl')
-- subexercise 1
type ListZipper a = ([a], [a])

-- subexercise 2
fromList :: [a] -> ListZipper a
fromList a = ([], a)

-- subexercise 3
goRight :: ListZipper a -> ListZipper a
goRight (a, []) = (a, [])
goRight (a, b:bx) = (b:a, bx)

-- subexercise 4
goLeft :: ListZipper a -> ListZipper a
goLeft (a:ax, b) = (ax, a:b)
goLeft ([], b) = ([], b)

-- subexercise 5
replaceFocus :: a -> ListZipper a -> ListZipper a
replaceFocus a (x, []) = (x, [])
replaceFocus a (x, y:ys) = (x, a:ys)

-- subexercise 6
insertAtFocus :: a -> ListZipper a -> ListZipper a
insertAtFocus a (x, y) = (x, a:y)

-- subexercise 7
deleteFocus :: ListZipper a -> ListZipper a
deleteFocus (x:xs, []) = (xs, [x])
deleteFocus (x, y:ys) = (x, ys)

-- subexercise 8
toList :: ListZipper a -> [a]
toList (x, y) = reverse x ++ y

-- subexercise 9
safeGoRight :: ListZipper a -> Maybe (ListZipper a)
safeGoLeft :: ListZipper a -> Maybe (ListZipper a)

safeGoRight (_, []) = Nothing
safeGoRight (x, y:ys) = Just (y:x, ys)

safeGoLeft ([], _) = Nothing
safeGoLeft (x:xs, y) = Just (xs, x:y)

-- subexercise 10
navigate :: [Int] -> ListZipper a -> Maybe (ListZipper a)
navigate moves zipper = foldl' go (Just zipper) moves
    where
        go :: Maybe (ListZipper a) -> Int -> Maybe (ListZipper a)
        go Nothing _ = Nothing
        go (Just z) m | m == 1 = safeGoRight z | m == -1 = safeGoLeft z | otherwise = Nothing
