# Functors, Applicative Functors and Monoids – Exercises

## Core Exercises to Reinforce the Topic

### 1. **Functor for Either**
Create a Functor instance for `Either a`. Write a function `mapEither` that works like `fmap` for `Either a`, but also implement it manually to understand the type signature.

Example:
```
mapEither (+3) (Right 5)  -- result: Right 8
mapEither (+3) (Left "error")  -- result: Left "error"
```

### 2. **IO Functor Practice**
Write a function `shout` that reads a line from input, converts it to uppercase, and appends "!!!" at the end, all using `fmap` on IO actions. Do this without using do-notation.

Example (if user inputs "hello"):
```
shout  -- result: "HELLO!!!"
```

### 3. **Function as Functor**
Implement a function `composeWith` that takes two functions and uses the fact that `(->) r` is a Functor to compose them. Write it using both `fmap` and directly with function composition.

Example:
```
composeWith (+3) (*2)  -- type: Num a => a -> a
composeWith (+3) (*2) $ 5  -- result: 13
```

### 5. **Applicative List Combinations**
Write a function `allCombinations` that takes two lists and returns all possible pairs using the Applicative style (without list comprehensions).

Example:
```
allCombinations [1,2] ["a","b"]  -- result: [(1,"a"),(1,"b"),(2,"a"),(2,"b")]
```

### 6. **Applicative for Functions**
Implement a function `combineFunctions` that takes three functions and combines them into one function that returns a tuple of their results, using the Applicative instance for `(->) r`.

Example:
```
combineFunctions (+1) (*2) (\\x -> x - 3) $ 5  -- result: (6,10,2)
```

### 7. **ZipList Implementation**
Create a `ZipList` newtype and implement its Applicative instance. Write a function `zipWithA` that works like `zipWith` but uses the Applicative instance.

Example:
```
getZipList $ zipWithA (+) (ZipList [1,2,3]) (ZipList [4,5,6])  -- result: [5,7,9]
```

### 8. **Monoid for Pairs**
Implement a Monoid instance for pairs `(a,b)` where both `a` and `b` are Monoids. Write a function `combinePairs` that combines a list of such pairs.

Example:
```
combinePairs [(Sum 1, Product 2), (Sum 3, Product 4)]  -- result: (Sum 4, Product 8)
```

### 9. **Maybe Monoid Practice**
Write a function `firstSuccess` that takes a list of `Maybe a` values and returns the first `Just` value using the `First` monoid. Then write `lastSuccess` using the `Last` monoid.

Example:
```
firstSuccess [Nothing, Just 3, Just 5]  -- result: Just 3
lastSuccess [Nothing, Just 3, Just 5]   -- result: Just 5
```

---