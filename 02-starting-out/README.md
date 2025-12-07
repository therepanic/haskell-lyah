# Starting Out – Exercises

## Core Exercises to Reinforce the Topic

### 1. Arithmetic Operations
Write a function `calc` that takes three numbers `x`, `y`, `z` and returns the result of the expression:  
`(x + y) * (z - x) / 2`

**Example:**
```haskell
calc 5 3 8  -- result: 12.0
```

### 2. Using `min` and `max`
Create a function `range` that takes three numbers and returns a tuple of:
- the minimum value
- the maximum value
- the difference between max and min

**Example:**
```haskell
range 7 3 10  -- result: (3, 10, 7)
```

### 3. Working with Lists
Write a function `listStats` that takes a list of numbers and returns a tuple of:
- the first element of the list
- the last element of the list
- the length of the list
- the sum of all elements

**Example:**
```haskell
listStats [1,2,3,4,5]  -- result: (1, 5, 5, 15)
```

### 4. Head and Tail Operations
Create a function `swapFirstLast` that:
- Takes the first element of a list and puts it at the end
- Takes the last element and puts it at the beginning
- Returns the new list

**Example:**
```haskell
swapFirstLast [1,2,3,4,5]  -- result: [5,2,3,4,1]
```

### 5. Using `take` and `drop`
Write a function `middleThree` that from a list of at least 5 elements returns the three middle elements.

**Example:**
```haskell
middleThree [1,2,3,4,5,6,7]  -- result: [3,4,5]
```

### 6. Generating Lists with Ranges
Create a function `evenSquares` that generates a list of squares of all even numbers from 1 to 20.

**Expected result:**
```
[4,16,36,64,100,144,196,256,324,400]
```

### 7. List Comprehensions with Conditions
Write a function `fizzBuzz` that for numbers from 1 to 30 returns:
- "Fizz" for numbers divisible by 3
- "Buzz" for numbers divisible by 5
- "FizzBuzz" for numbers divisible by both 3 and 5
- the number itself otherwise

**Example:**
```haskell
fizzBuzz  -- result: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz",...]
```

### 8. Working with Tuples and `zip`
Create a function `pairUp` that takes two lists and returns a list of tuples, but only for pairs where the sum of the two elements is even.

**Example:**
```haskell
pairUp [1,2,3,4] [5,6,7,8]  -- result: [(1,5),(1,7),(2,6),(2,8),(3,5),(3,7),(4,6),(4,8)]
```

### 9. Combining Multiple List Comprehensions
Write a function `rightTriangles` that finds all right triangles with integer sides where all sides are ≤ 20 and the perimeter is ≤ 50. Return a list of tuples `(a, b, c)` sorted by perimeter.

**Hint:** Use nested list comprehensions with conditions `a^2 + b^2 == c^2` and `a + b + c <= 50`.

### 10. Advanced List Manipulation
Create a function `removeDuplicates` that takes a list and returns a new list with all consecutive duplicates removed.

**Example:**
```haskell
removeDuplicates [1,1,2,3,3,3,4,5,5,1]  -- result: [1,2,3,4,5,1]
```

---
