# Input and Output – Exercises

## Core Exercises to Reinforce the Topic

### 1. Hello, User
Write a program that:
- Asks the user for their name
- Prints a greeting using that name

Example interaction:
```
What's your name?
Alice
Hello, Alice!
```

---

### 2. Echo Until Empty
Write a program that:
- Continuously reads lines from standard input
- Prints each line back to the user
- Stops when the user enters an empty line

Hint: Use recursion or `when`.

---

### 3. Uppercase Transformer
Write a program that:
- Reads all input from standard input
- Prints the same input but converted to uppercase

Hint: Use `getContents` or `interact`.

---

### 4. Line Length Reporter
Write a program that:
- Reads lines from standard input
- For each line, prints the line followed by its length

Example:
```
hello
hello (5)
```

---

### 5. Short Lines Only
Write a program that:
- Reads all input
- Outputs only those lines that are shorter than 8 characters

Hint: Use `lines`, `filter`, and `unlines` or `interact`.

---

### 6. Numbered Output
Write a program that:
- Reads all input lines
- Prints each line prefixed with its line number (starting from 1)

Example:
```
1 - first line
2 - second line
```

---

### 7. Palindrome Checker
Write a program that:
- Reads lines from standard input
- For each line prints:
  - `"palindrome"` if the line is a palindrome
  - `"not a palindrome"` otherwise

Example:
```
radar
palindrome
hello
not a palindrome
```

---

### 8. File Line Counter
Write a program that:
- Takes a file name as a command line argument
- Prints how many lines the file contains

Example:
```
$ runhaskell LineCount.hs notes.txt
The file has 42 lines
```

---

### 9. Safe File Reader
Write a program that:
- Takes a file name as a command line argument
- Prints the file contents
- If the file does not exist, prints a friendly error message instead of crashing

Hint: Use `catch` and `isDoesNotExistError`.

---

### 10. Random Number Guessing Game
Write a program that:
- Generates a random number between 1 and 10
- Asks the user to guess the number
- Tells the user whether they guessed correctly
- Repeats until the user enters an empty line

Example:
```
Guess the number (1–10):
5
Sorry, it was 7
Guess the number (1–10):
7
You are correct!
```

Hint: Use `System.Random`, `getStdGen`, and recursion.

---
