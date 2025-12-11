# Modules – Exercises

## Core Exercises to Reinforce the Topic

### 1. Importing and Using `nub`
Create a script that imports only the `nub` function from `Data.List`. Write a function `uniqueChars` that takes a string and returns a list of its unique characters in the order they first appear.

**Example:**
```haskell
uniqueChars "hello world"  -- result: "helo wrd"
```

### 2. Qualified Import with Alias
Import `Data.Map` qualified with the alias `M`. Write a function `countOccurrences` that takes a list of items (with `Ord` constraint) and returns a map where each key is an item and the value is how many times it appears in the list.

**Example:**
```haskell
countOccurrences [1,2,3,2,1,4,5,4]  -- result: fromList [(1,2),(2,2),(3,1),(4,2),(5,1)]
```

### 3. Using `intersperse` and `intercalate`
Write a function `formatList` that takes a list of strings and returns a single string where:
- The strings are joined with `", "`
- The entire result is enclosed in brackets `[ ]`

**Example:**
```haskell
formatList ["apple","banana","cherry"]  -- result: "[apple, banana, cherry]"
```

### 4. Working with `transpose`
Create a function `columnSums` that takes a list of equal-length lists of numbers and returns a list containing the sum of each column.

**Example:**
```haskell
columnSums [[1,2,3],[4,5,6],[7,8,9]]  -- result: [12,15,18]
```

### 5. Using `foldl'` for Large Lists
Write a function `sumLarge` that computes the sum of a list of integers using `foldl'` (strict fold) from `Data.List`.

**Example:**
```haskell
sumLarge [1..1000000]  -- should work without stack overflow
```

### 6. Combining `concatMap` and `replicate`
Write a function `repeatEach` that takes a list of numbers and repeats each number as many times as its value.

**Example:**
```haskell
repeatEach [1,2,3]  -- result: [1,2,2,3,3,3]
```

### 7. Working with `takeWhile` and `dropWhile`
Create a function `splitOn` that splits a list at the first element that satisfies a given predicate.

**Example:**
```haskell
splitOn (>3) [1,2,3,4,5,6]  -- result: ([1,2,3],[4,5,6])
```

### 8. Using `span`, `break`, and `partition`
Write a function `splitBySign` that takes a list of numbers and splits it into three parts:
1. Numbers until the first positive number (exclusive)
2. The first positive number
3. Everything after the first positive number

**Example:**
```haskell
splitBySign [-3,-2,-1,0,1,2,3,4]  -- result: ([-3,-2,-1,0],[1],[2,3,4])
```

### 9. Finding Elements with `find` and `elemIndex`
Create a function `findAndPosition` that takes a list and a predicate, and returns a tuple of:
- The first element satisfying the predicate (as `Maybe`)
- Its index (as `Maybe Int`)

**Example:**
```haskell
findAndPosition (>5) [1,3,5,7,9,11]]  -- result: (Just 7, Just 3)
```

### 10. Using Set Operations
Import `Data.Set` qualified as `S`. Write a function `commonLetters` that takes two strings and returns a sorted list of letters that appear in both strings.

**Example:**
```haskell
commonLetters "haskell" "functions"  -- result: "los" (letters common to both)
```

### 11. Creating Your Own Module
Create a module `Math.Operations` in a file `Math/Operations.hs` that exports:
- `add` - adds two numbers
- `multiply` - multiplies two numbers
- `average` - calculates the average of three numbers

**Requirements:**
1. Module must be in hierarchical form (`Math.Operations`)
2. Include a helper function that is NOT exported
3. Write a small test script that imports and uses your module

**Example structure:**
```haskell
-- Math/Operations.hs
module Math.Operations
( add
, multiply
, average
) where

add x y = x + y
multiply x y = x * y
average x y z = (x + y + z) / 3
```
