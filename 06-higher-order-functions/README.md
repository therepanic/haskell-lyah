# Higher Order Functions – Exercises

## Core Exercises to Reinforce the Topic

### 1. **Apply Twice**
Write a function `applyTwice` that takes a function and a value, and applies that function twice to the value.
**Example:**
```haskell
applyTwice (+3) 10   -- result: 16
applyTwice (++ "!") "hello"  -- result: "hello!!"
```

---

### 2. **Custom ZipWith**
Implement `zipWith'` that takes a binary function and two lists, and combines them by applying the function to corresponding elements.
**Example:**
```haskell
zipWith' (+) [1,2,3] [4,5,6]   -- result: [5,7,9]
zipWith' max [1,5,3] [2,3,4]   -- result: [2,5,4]
```

---

### 3. **Flip Function**
Write a function `flip'` that takes a binary function and returns a new function with the arguments swapped.
**Example:**
```haskell
(flip' div) 10 2   -- result: 5
flip' zip [1,2,3] "abc"   -- result: [('a',1),('b',2),('c',3)]
```

---

### 4. **Custom Map**
Implement `map'` using a fold (either `foldr` or `foldl`).
**Example:**
```haskell
map' (*2) [1,2,3,4]   -- result: [2,4,6,8]
map' toUpper "haskell" -- result: "HASKELL"
```

---

### 5. **Custom Filter**
Implement `filter'` using a fold (either `foldr` or `foldl`).
**Example:**
```haskell
filter' even [1..10]   -- result: [2,4,6,8,10]
filter' (>5) [3,7,2,9] -- result: [7,9]
```

---

### 6. **Maximum with Fold**
Implement `maximum'` using a fold (without using `foldl1` or `foldr1` explicitly).
**Example:**
```haskell
maximum' [3,7,2,9,1]   -- result: 9
maximum' "hello"       -- result: 'o'
```

---

### 7. **Reverse with Fold**
Implement `reverse'` using a fold (either `foldl` or `foldr`).
**Example:**
```haskell
reverse' [1,2,3,4,5]   -- result: [5,4,3,2,1]
reverse' "haskell"     -- result: "lleksah"
```

---

### 8. **Take While**
Implement `takeWhile'` that takes a predicate and a list, and returns elements from the start as long as the predicate holds.
**Example:**
```haskell
takeWhile' (<5) [1,3,7,2,4]   -- result: [1,3]
takeWhile' isLetter "hello123" -- result: "hello"
```

---

### 9. **Collatz Chain Length**
Write a function `collatzLength` that returns the length of the Collatz sequence for a given starting number.  
The Collatz sequence is defined as:
$$
\text{collatz}(n) = \begin{cases}
1 & \text{if } n = 1 \\
\text{collatz}(n/2) & \text{if } n \text{ is even} \\
\text{collatz}(3n+1) & \text{if } n \text{ is odd}
\end{cases}
$$
**Example:**
```haskell
collatzLength 13   -- result: 10
collatzLength 10   -- result: 7
```

---

### 10. **Sum of Odd Squares**
Using `map`, `filter`, `takeWhile`, and `sum`, write a one‑liner that computes the sum of all odd squares less than 10000.
**Example:**
```haskell
oddSquareSum   -- result: 166650
```

---

### 11. **Scan for Square‑Root Sum**
Using `scanl`, find how many terms of the sequence $\sum_{k=1}^n \sqrt{k}$ are needed to exceed 1000.
**Example:**
```haskell
sqrtTermsNeeded   -- result: 131
```

---

### 12. **Point‑Free Function**
Rewrite the following function in point‑free style using function composition (`.`):
```haskell
fn x = ceiling (negate (tan (cos (max 50 x))))
```
**Example:**
```haskell
fn 60   -- result: 2
fn 30   -- result: 0
```

---