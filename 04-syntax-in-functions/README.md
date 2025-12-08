# Syntax in Functions – Exercises  
## Pattern matching, guards, where, let, case expressions  

---

### 1. **Factorial with Pattern Matching**  
Write a function `factorial` that computes the factorial of a non‑negative integer using **pattern matching**.  
- Base case: `factorial 0 = 1`  
- Recursive case: `factorial n = n * factorial (n - 1)`  

**Example:**  
```haskell
factorial 5   -- 120
factorial 0   -- 1
```

---

### 2. **Describe the List**  
Write a function `describeList` that uses **pattern matching** to return a description of a list:  
- `"empty"` for an empty list  
- `"singleton"` for a list with one element  
- `"longer"` for a list with two or more elements  

**Example:**  
```haskell
describeList []        -- "empty"
describeList [7]       -- "singleton"
describeList [1,2,3]   -- "longer"
```

---

### 3. **Safe Head and Tail**  
Implement `safeHead` and `safeTail` using **case expressions**.  
- `safeHead` returns `Just x` for the first element, `Nothing` for an empty list.  
- `safeTail` returns `Just xs` for the tail, `Nothing` for an empty list.  

**Example:**  
```haskell
safeHead [5,6,7]   -- Just 5
safeHead []        -- Nothing
safeTail [5,6,7]   -- Just [6,7]
safeTail []        -- Nothing
```

---

### 4. **BMI Categorizer with Guards**  
Write a function `bmiTell` that takes weight (kg) and height (m) and returns a **string** using **guards**:  
- `"underweight"` if BMI < 18.5  
- `"normal"` if 18.5 ≤ BMI < 25  
- `"overweight"` if 25 ≤ BMI < 30  
- `"obese"` if BMI ≥ 30  

BMI = weight / height².  

**Example:**  
```haskell
bmiTell 70 1.75   -- "normal"
bmiTell 90 1.70   -- "obese"
```

---

### 5. **Where in Guards**  
Rewrite the `bmiTell` function from exercise 4 using a **`where` clause** to compute the BMI only once.

**Example:**  
```haskell
bmiTell 70 1.75   -- "normal"
```

---

### 6. **Let in List Comprehension**  
Write a function `evenSquaresUnder` that takes an integer `n` and returns a list of squares of even numbers less than `n`, but **use a `let` inside a list comprehension** to compute the square.

**Example:**  
```haskell
evenSquaresUnder 10   -- [4, 16, 36, 64]
```

---

### 7. **Pattern Matching on Tuples**  
Write a function `addVectors` that adds two 2D vectors (pairs) using **pattern matching on tuples**.  
- Do **not** use `fst` and `snd`.  

**Example:**  
```haskell
addVectors (1,2) (3,4)   -- (4,6)
```

---

### 8. **First Three Elements**  
Write a function `firstThree` that uses **pattern matching** to extract the first three elements of a list into a tuple.  
- If the list has fewer than three elements, return `Nothing`.  

**Example:**  
```haskell
firstThree [1,2,3,4,5]   -- Just (1,2,3)
firstThree [10,20]       -- Nothing
```

---

### 9. **Guard and Pattern Combination**  
Write a function `grade` that takes a score (0–100) and returns a grade letter using **both pattern matching and guards**:  
- `'A'` for 90–100  
- `'B'` for 80–89  
- `'C'` for 70–79  
- `'D'` for 60–69  
- `'F'` otherwise  
Also handle invalid scores (<0 or >100) by returning `'X'` (use pattern matching for this).

**Example:**  
```haskell
grade 85   -- 'B'
grade 110  -- 'X'
grade -5   -- 'X'
```

---

### 10. **Case Expression for Day of Week**  
Write a function `dayType` that takes a day name (as a `String`) and returns its type using a **case expression**:  
- `"Monday"`, `"Tuesday"`, `"Wednesday"`, `"Thursday"`, `"Friday"` → `"Weekday"`  
- `"Saturday"`, `"Sunday"` → `"Weekend"`  
- Anything else → `"Unknown"`  

**Example:**  
```haskell
dayType "Friday"    -- "Weekday"
dayType "Sunday"    -- "Weekend"
dayType "Funday"    -- "Unknown"
```

---
