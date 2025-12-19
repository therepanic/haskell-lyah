# Haskell LYAH – Learn You a Haskell Exercise Collection

A comprehensive, hands-on companion to the classic **"Learn You a Haskell for Great Good!"** book. This repository contains carefully crafted exercises for each chapter, designed to reinforce concepts through practical coding challenges.

## 📚 What's Inside

This project follows the structure of LYAH chapter by chapter, with each topic containing:

- **`README.md`** – Exercise descriptions with examples and hints
- **`Exercises.hs`** – Completed solutions with type signatures and implementations

Each exercise set is designed to:
- Reinforce the core concepts from the corresponding chapter
- Progressively build complexity
- Encourage functional thinking and pattern matching
- Provide immediate, testable examples

## 🗂️ Repository Structure

```
haskell-lyah/
│
├── 02-starting-out/
├── 03-types-and-typeclasses/
├── 04-syntax-in-functions/
├── 05-recursion/
├── 06-higher-order-functions/
├── 07-modules/
├── 08-making-our-own-types-and-typeclasses/
├── 09-input-and-output/
├── 10-functionally-solving-problems/
├── 11-functors-applicative-functors-and-monoids/
├── 12-a-fistful-of-monads/
├── 13-for-a-few-monads-more/
└── 14-zippers/
```

Each directory contains 8-15 exercises that target the chapter's key topics.

## 🎯 Exercise Philosophy

The exercises in this repository follow these principles:

1. **Concept-First**: Each exercise isolates and reinforces a specific concept
2. **Progressive Difficulty**: Starts simple, builds to more complex applications
3. **Practical Examples**: Real-world inspired problems, not abstract puzzles
4. **Type-Driven**: Emphasizes thinking with types before implementing
5. **Self-Contained**: Each exercise can be understood and solved independently

## 🚀 Getting Started

### Prerequisites

- GHC (Glasgow Haskell Compiler) 8.10 or newer
- Basic familiarity with "Learn You a Haskell" content

### Running the Exercises

```bash
# Navigate to any topic directory
cd 05-recursion

# Load the exercises in GHCi
ghci Exercises.hs

# Test individual functions
> quickSort [3,1,4,1,5,9]
[1,1,3,4,5,9]
```

### Workflow Recommendation

1. Read the corresponding LYAH chapter
2. Open the topic's `README.md` to view exercises
3. Attempt to solve them yourself first
4. Compare with the solutions in `Exercises.hs`
5. Experiment and modify the code in GHCi

## 📖 Topics Covered

- **Starting Out**: Basic syntax, lists, ranges, list comprehensions
- **Types and Typeclasses**: Type system fundamentals, common typeclasses
- **Syntax in Functions**: Pattern matching, guards, where/let bindings
- **Recursion**: Recursive thinking, edge cases, accumulator patterns
- **Higher-Order Functions**: Maps, filters, folds, function composition
- **Modules**: Importing, qualified imports, Data.List, Data.Map
- **Custom Types**: Data declarations, record syntax, type parameters
- **I/O**: Actions, do notation, file handling
- **Problem Solving**: Reverse Polish notation, pathfinding algorithms
- **Functors & Applicatives**: Functor laws, applicative operations, monoids
- **Monads**: Maybe, list, IO monads, monad laws
- **Monad Transformers**: State, Reader, Writer monads
- **Zippers**: Focus-based navigation, tree zippers, functional cursors

## 🤝 Contributing

This is a personal learning repository, but suggestions and corrections are welcome! If you find errors or have ideas for additional exercises, feel free to open an issue or submit a pull request.

## 📝 License

This project is released into the public domain under the [Unlicense](LICENSE). Feel free to use, modify, and distribute this code however you like.

## 🙏 Acknowledgments

- **Miran Lipovača** for writing the excellent "Learn You a Haskell for Great Good!"
- The Haskell community for making functional programming accessible and enjoyable

---
