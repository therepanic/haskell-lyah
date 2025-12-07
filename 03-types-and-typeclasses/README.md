# Types and Typeclasses – Exercises

## Core Exercises to Reinforce the Topic

### 1. Type Annotation for Arithmetic
Write a function `circleArea` that calculates the area of a circle given its radius.  
Add an explicit type signature with `Double` for both input and output.

**Example:**
```haskell
circleArea 5.0  -- result: 78.53981633974483
```

### 2. Polymorphic Pair Function
Create a function `swapPair` that swaps the elements of a 2-tuple.  
Use type variables `a` and `b` in the type signature to make it polymorphic.

**Example:**
```haskell
swapPair (True, "hello")  -- result: ("hello", True)
swapPair (3, 5.2)         -- result: (5.2, 3)
```

### 3. Working with `Maybe` Type
Write a function `safeDiv` that performs division but returns `Nothing` when dividing by zero.  
Type signature: `safeDiv :: (Eq a, Fractional a) => a -> a -> Maybe a`

**Example:**
```haskell
safeDiv 10 2   -- result: Just 5.0
safeDiv 10 0   -- result: Nothing
```

### 4. Typeclasses in Action
Create a function `describeValue` that takes any value from the `Show` typeclass and returns a descriptive string.  
Type signature: `describeValue :: Show a => a -> String`

**Example:**
```haskell
describeValue 42       -- result: "The value is: 42"
describeValue True     -- result: "The value is: True"
describeValue [1,2,3]  -- result: "The value is: [1,2,3]"
```

### 5. Using `Ord` Typeclass
Write a function `inRange` that checks if a value is within a given inclusive range.  
The function should work for any type in the `Ord` typeclass.

**Example:**
```haskell
inRange 5 1 10    -- result: True
inRange 'd' 'a' 'c'  -- result: False
inRange 3.14 3.0 4.0  -- result: True
```

### 6. Reading with Type Annotations
Create a function `parseNumbers` that takes a list of strings and converts them to a list of `Int`s using `read`.  
Handle the conversion explicitly with type annotations.

**Example:**
```haskell
parseNumbers ["123", "456", "789"]  -- result: [123, 456, 789]
```

### 7. Enumeration and Bounded
Write a function `allEnumValues` that returns all values of any type that belongs to both `Enum` and `Bounded` typeclasses.

**Example:**
```haskell
allEnumValues :: (Bounded a, Enum a) => [a]
allEnumValues  -- for Bool: [False, True]
```

### 8. Generic Statistics Function
Create a function `calcStats` that works for any numeric type (`Num a`) and returns a tuple of:
- Sum of the list
- Average (as `Double`)
- Minimum value
- Maximum value

**Example:**
```haskell
calcStats [1,2,3,4,5]  -- result: (15, 3.0, 1, 5)
calcStats [1.5, 2.5, 3.5]  -- result: (7.5, 2.5, 1.5, 3.5)
```

### 9. Typeclass Constraints in Action
Write a function `compareThree` that takes three values of the same type (must be in `Ord` typeclass) and returns them in sorted order as a tuple.

**Example:**
```haskell
compareThree 5 1 9  -- result: (1, 5, 9)
compareThree 'z' 'a' 'm'  -- result: ('a', 'm', 'z')
```

---
