-- subexercise 1
data Shape2D = Circle Float | Square Float | Rectangle Float Float deriving (Show)

area2D :: Shape2D -> Float
area2D (Circle r) = pi * r^2
area2D (Square r) = r^2

-- subexercise 2
area2D (Rectangle a b) = a * b

-- subexercise 3
data Point2D = Point2D Float Float
data Shape2D' = Circle' Point2D Float | Rectangle' Point2D Point2D
moveShape :: Shape2D' -> Float -> Float -> Shape2D'
moveShape (Circle' (Point2D p1 p2) r) x y = Circle'(Point2D (p1 + x) (p2 + y)) r
moveShape (Rectangle' (Point2D p1 p2) (Point2D p3 p4)) x y = Rectangle'(Point2D (p1 + x) (p2 + y)) (Point2D p3 p4)

-- subexercise 4
data Person = Person {
    name :: String
    , age :: Int
    , email :: String
} deriving (Show)

birthday :: Person -> Person
birthday p = p { age = age p + 1 }

-- subexercise 5
data Box a = EmptyBox | Box a
unwrap :: Box a -> Maybe a
unwrap EmptyBox = Nothing
unwrap (Box x) = Just x

-- subexercise 6
data TrafficLight = Red | Yellow | Green
instance Eq TrafficLight where
  Red == Red = True
  Yellow == Yellow = True
  Green == Green = True
  _ == _ = False

-- subexercise 7
data Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
    deriving (Eq, Ord, Show, Read, Enum, Bounded)

isWeekend :: Weekday -> Bool
isWeekend Saturday = True
isWeekend Sunday = True
isWeekend _ = False

-- subexercise 8
data MyList a = Empty | Cons a (MyList a)

instance Show a => Show (MyList a) where
    show Empty = "[]"
    show (Cons x xs) = show x ++ " : " ++ show xs

-- subexercise 9
data Tree a = EmptyTree | Node a (Tree a) (Tree a)

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeToList :: Tree a -> [a]

treeInsert x EmptyTree =
  Node x EmptyTree EmptyTree

treeInsert x (Node y left right)
    | x == y = Node y left right
    | x < y = Node y (treeInsert x left) right
    | x > y = Node y left (treeInsert x right)

treeToList EmptyTree = []

treeToList (Node x left right) =
    treeToList left ++ [x] ++ treeToList right

-- subexcercise 10
instance Functor Tree where
    fmap _ EmptyTree = EmptyTree
    fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)
