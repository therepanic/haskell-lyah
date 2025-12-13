# Making Our Own Types and Typeclasses – Exercises

## Core Exercises to Reinforce the Topic

### 1. Simple Algebraic Data Type
Define a data type `Shape2D` that can be either:
- a `Circle` with a radius
- a `Square` with a side length  

Derive `Show` for the type.

Then write a function `area2D :: Shape2D -> Float` that computes the area.

Example:
```haskell
area2D (Circle 10)   -- result: 314.15927
area2D (Square 5)    -- result: 25.0
```

---

### 2. Pattern Matching on Custom Types
Extend the previous exercise by adding a `Rectangle` constructor with width and height.

Update `area2D` so it works for all constructors.

Example:
```haskell
area2D (Rectangle 4 6)  -- result: 24.0
```

---

### 3. Nested Data Types
Create a `Point2D` type with two coordinates and redefine `Shape2D` so that:
- `Circle` has a `Point2D` center and a radius
- `Rectangle` has two `Point2D` values (top-left and bottom-right)

Write a function `moveShape :: Shape2D -> Float -> Float -> Shape2D`  
that moves a shape by given x and y offsets.

---

### 4. Record Syntax Practice
Define a `Person` type using record syntax with the following fields:
- `name :: String`
- `age :: Int`
- `email :: String`

Derive `Show`.

Write a function `birthday :: Person -> Person` that increases the person's age by 1.

---

### 5. Parameterized Types
Define a parameterized type:
```haskell
data Box a = EmptyBox | Box a
```

Derive `Show`.

Write a function `unwrap :: Box a -> Maybe a` that converts:
- `Box x` to `Just x`
- `EmptyBox` to `Nothing`

---

### 6. Custom Eq Instance
Define a data type `TrafficLight = Red | Yellow | Green`.

Manually implement an `Eq` instance where:
- `Red == Red`, `Yellow == Yellow`, `Green == Green`
- all other combinations are unequal

Test it using `==` and `elem`.

---

### 7. Enum and Bounded
Create an enumeration type `Weekday` with values from `Monday` to `Sunday`.

Derive:
- `Eq`
- `Ord`
- `Show`
- `Read`
- `Enum`
- `Bounded`

Write a function `isWeekend :: Weekday -> Bool`.

---

### 8. Recursive Data Structure
Implement your own list type:
```haskell
data MyList a = Empty | Cons a (MyList a)
```

Derive `Show`.

Write a function `myLength :: MyList a -> Int` that computes the length of the list.

---

### 9. Binary Tree Operations
Define a binary search tree:
```haskell
data Tree a = EmptyTree | Node a (Tree a) (Tree a)
```

Write:
- `treeInsert :: (Ord a) => a -> Tree a -> Tree a`
- `treeToList :: Tree a -> [a]` (in-order traversal)

---

### 10. Functor Instance
Make the `Tree` type from the previous exercise an instance of `Functor`.

Implement `fmap` so that it applies a function to every value stored in the tree.

Example:
```haskell
fmap (*2) (Node 3 (Node 1 EmptyTree EmptyTree) EmptyTree)
-- result: Node 6 (Node 2 EmptyTree EmptyTree) EmptyTree
```

---
