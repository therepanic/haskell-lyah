# For a Few Monads More – Exercises

## Core Exercises to Reinforce the Topic

---

### 1. Logging with Writer

Write a function `logAdd` that:

* takes an integer
* returns it plus 1
* logs what it did

Use the `Writer [String]` monad.

Example:

```haskell
runWriter (logAdd 3)
-- result: (4, ["Added 1 to 3"])
```

---

### 2. Multiple Logs

Build a computation `addThenMul` that:

* logs “start”
* adds 1 to a number
* logs “after add”
* multiplies the result by 2
* logs “after mul”
* returns the final value

Example:

```haskell
runWriter (addThenMul 3)
-- result: (8, ["start","after add","after mul"])
```

---

### 3. Reader Configuration

Define a config type:

```haskell
data Config = Config {threshold :: Int}
```

Write a function `checkValue` that:

* reads the threshold from environment
* takes a number
* returns `True` if greater than threshold

Example:

```haskell
runReader (checkValue 5) (Config 3)
-- result: True
```

---

### 4. Reader Dependency

Write a `Reader String Int` called `stringLength` that returns the length of the environment string.

Example:

```haskell
runReader stringLength "hello"
-- result: 5
```

---

### 5. State Counter

Write a stateful computation `countChars` that:

* takes a string
* counts characters seen so far using `State Int`
* returns the string length

Example:

```haskell
runState (countChars "hey") 0
-- result: (3,3)
```

---

### 6. Stack Push and Pop

Using `State [Int]`, write `pushPop` that:

* pushes 5
* pushes 10
* pops
* returns the popped value

Example:

```haskell
runState pushPop []
-- result: (10,[5])
```

---

### 7. Fibonacci with State

Write a function `nextFib` that:

* uses `State (Int,Int)`
* updates the pair to the next Fibonacci numbers
* returns the current first number

Example:

```haskell
runState nextFib (0,1)
-- result: (0,(1,1))
```

---

### 8. Logging and Configuration

Combine `Writer` and `Reader`:
Write `logIfGreater` that:

* reads an Int threshold from `Reader`
* takes a number
* logs “greater” if number > threshold
* logs “not greater” otherwise
* returns the original number

Example:

```haskell
runWriter (runReader (logIfGreater 5) (3))
-- result: (5, ["greater"]) -- if threshold < 5, else ["not greater"]
```

---

### 9. Stateful Validation

Write `validateList` using `State Int` to:

* take a list of numbers
* validate that each is non-negative
* count how many validations were done
* return the original list

Example:

```haskell
runState (validateList [1,2,3]) 0
-- result: ([1,2,3],3)
```

---

### 10. Combined Monad Flow

Write a function `process` that:

* reads a threshold from `Reader Config`
* logs “start” using `Writer`
* counts how many numbers in a list are above threshold using `State Int`
* returns the count and logs

Example:

```haskell
runWriter (runReader (runStateT (process [1,5,3]) 0) (Config 3))
-- possible result: ((2,["start","checked 1","checked 5","checked 3"]),finalState)
```

---

## Notes

* Use `tell` for logging with `Writer`
* Use `get` / `put` / `modify` for `State`
* Use `ask` / `asks` for `Reader`
* Try to compose monads where appropriate

---
