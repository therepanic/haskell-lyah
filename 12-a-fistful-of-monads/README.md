# Monads – Exercises

## Core Exercises to Reinforce the Topic

### 1. Maybe Monad: Safe Division

Write a function `safeDiv` that takes two integers and returns `Nothing` if division by zero is attempted, or `Just` the result of the division otherwise. Use `Maybe` to represent the result.

Example:

```haskell
safeDiv 10 2  -- result: Just 5
safeDiv 10 0  -- result: Nothing
```

---

### 2. Either Monad: Error Handling

Create a function `parseInt` that converts a string to an integer. If the string is not a valid integer, return `Left` with an error message, and `Right` with the parsed integer on success.

Example:

```haskell
parseInt "123"  -- result: Right 123
parseInt "abc"  -- result: Left "Not a valid number"
```

---

### 3. List Monad: Generate Even Numbers

Write a function `evenNumbers` that returns a list of even numbers from 1 to 100, using the `List` monad.

Example:

```haskell
evenNumbers  -- result: [2,4,6,8,...,100]
```

---

### 4. Monad Comprehension: FizzBuzz

Using `do` notation, create a function `fizzBuzz` that returns a list from 1 to 30, but replaces:

* numbers divisible by 3 with "Fizz"
* numbers divisible by 5 with "Buzz"
* numbers divisible by both 3 and 5 with "FizzBuzz"

Example:

```haskell
fizzBuzz  -- result: ["1", "2", "Fizz", "4", "Buzz", "Fizz", ...]
```

---

### 5. Monad with State: Counter

Write a function `counter` that uses the `State` monad to keep track of a counter, starting from 0, and increments it every time it is called. Return the counter value at each step.

Example:

```haskell
counter  -- result: [1,2,3,...]
```

---

### 6. IO Monad: User Interaction

Create a function `greetUser` that prompts the user to enter their name and then greets them. The function should use the `IO` monad for input/output operations.

Example:

```haskell
greetUser  -- result: "Enter your name: John", "Hello, John!"
```

---

### 7. Monad Composition: Nested Maybe

Write a function `doubleIfEven` that takes an integer, checks if it's even (returns `Nothing` if not), and if so, doubles it (wrap it in a `Just`). If the result is greater than 10, return `Nothing`.

Example:

```haskell
doubleIfEven 4  -- result: Just 8
doubleIfEven 5  -- result: Nothing
doubleIfEven 6  -- result: Nothing
```

---

### 8. List Monad: Pairing Even Numbers

Write a function `pairEvenNumbers` that takes a list of integers and pairs each even number with its square, using the `List` monad. Only pair even numbers.

Example:

```haskell
pairEvenNumbers [1,2,3,4]  -- result: [(2,4),(4,16)]
```

---

### 9. Either Monad: Validation Pipeline

Using the `Either` monad, create a function `validateUser` that takes a string for a username and checks:

* if the username is non-empty,
* if it's at least 5 characters long,
* if it's alphanumeric.

Return `Left` with an error message if any condition fails, and `Right` if the username passes all checks.

Example:

```haskell
validateUser "abc123"  -- result: Right "Valid username"
validateUser "abc"     -- result: Left "Username too short"
```

---

### 10. Using IO Monad with State

Write a function `counterApp` that prompts the user for a number, increments it by 1 using the `State` monad, and then prints the result using the `IO` monad.

Example:

```haskell
counterApp  -- result: "Enter a number: 5", "Result: 6"
```

---
