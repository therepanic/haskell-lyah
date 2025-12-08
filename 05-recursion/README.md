# Recursion – Exercises

## Core Exercises to Reinforce the Topic

### 1. **Basic Factorial**
Write a recursive function `factorial` that computes the factorial of a non-negative integer $n$.  
The factorial is defined as:
$$n! = n \times (n-1) \times (n-2) \times \dots \times 1$$
with $0! = 1$.

**Example:**
```haskell
factorial 5  -- result: 120
factorial 0  -- result: 1
```

---

### 2. **Sum of a List**
Implement a recursive function `sum'` that calculates the sum of all numbers in a list.  
The base case for an empty list should be $0$.

**Example:**
```haskell
sum' [1,2,3,4,5]  -- result: 15
sum' []           -- result: 0
```

---

### 3. **Custom `replicate`**
Write a recursive function `replicate'` that takes an integer $n$ and a value $x$, then returns a list containing $x$ repeated $n$ times.  
Handle negative $n$ by returning an empty list.

**Example:**
```haskell
replicate' 3 'a'  -- result: "aaa"
replicate' 5 7    -- result: [7,7,7,7,7]
replicate' (-2) 5 -- result: []
```

---

### 4. **Custom `take`**
Implement a recursive function `take'` that takes an integer $n$ and a list, then returns the first $n$ elements of that list.  
If $n$ is $\le 0$ or the list is empty, return an empty list.

**Example:**
```haskell
take' 3 [1,2,3,4,5]  -- result: [1,2,3]
take' 0 [5,6,7]    -- result: []
take' 5 [1,2]       -- result: [1,2]
```

---

### 5. **Custom `reverse`**
Write a recursive function `reverse'` that reverses a given list.  
**Hint:** The reverse of an empty list is an empty list. For a non‑empty list `(x:xs)`, the reverse is `reverse' xs ++ [x]`.

**Example:**
```haskell
reverse' [1,2,3,4,5]  -- result: [5,4,3,2,1]
reverse' "hello"     -- result: "olleh"
```

---

### 6. **Fibonacci Sequence**
Implement a recursive function `fib` that returns the $n$-th Fibonacci number, where:
$$
\begin{aligned}
F(0) &= 0, \\
F(1) &= 1, \\
F(n) &= F(n-1) + F(n-2).
\end{aligned}
$$

**Example:**
```haskell
fib 0  -- result: 0
fib 5  -- result: 5  (sequence: 0,1,1,2,3,5)
```

---

### 7. **Custom `zip`**
Write a recursive function `zip'` that takes two lists and returns a list of pairs (tuples).  
If either list is empty, return an empty list.

**Example:**
```haskell
zip' [1,2,3] ['a','b','c']  -- result: [(1,'a'),(2,'b'),(3,'c')]
zip' [1,2] [3,4,5]      -- result: [(1,3),(2,4)]
```

---

### 8. **Quicksort Implementation**
Implement the **quicksort** algorithm recursively.  
The algorithm:
1. Pick the first element as the **pivot**.
2. Create two lists: elements $\le$ pivot, and elements $>$ pivot.
3. Recursively sort both lists, then combine them as `smallerSorted ++ [pivot] ++ biggerSorted`.

**Example:**
```haskell
quicksort [10,2,5,3,1,6,7,4,2,3]  -- result: [1,2,2,3,3,4,5,6,7,10]
```

---

### 9. **Custom `elem`**
Write a recursive function `elem'` that checks whether a given element is present in a list.  
Return `True` if found, `False` otherwise.

**Example:**
```haskell
elem' 5 [1,2,3,4,5]  -- result: True
elem' 9 [1,2,3]       -- result: False
```

---

### 10. **Power Function**
Implement a recursive function `power` that raises a number $x$ to a non‑negative integer exponent $n$:
$$x^n = x \times x^{n-1}$$
with $x^0 = 1$.

**Example:**
```haskell
power 2 3   -- result: 8
power 5 0   -- result: 1
```

---
