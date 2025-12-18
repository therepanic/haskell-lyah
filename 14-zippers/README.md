# Zippers – Exercises

## Core Exercises to Reinforce the Topic

---

### 1. List Zipper Type

Define a type alias `ListZipper a` that represents a zipper for a list.

**Hint:** use two lists — elements to the left of the focus and the focus with elements to the right.

Example:

```haskell
type ListZipper a = ...
```

---

### 2. Create a Zipper from a List

Write a function `fromList` that:

* takes a list
* creates a zipper with the focus at the first element

Example:

```haskell
fromList [1,2,3]
-- result: ([],[1,2,3])
```

---

### 3. Move Focus Right

Write a function `goRight` that:

* moves the focus one element to the right
* returns the zipper unchanged if movement is not possible

Example:

```haskell
goRight ([],[1,2,3])
-- result: ([1],[2,3])
```

---

### 4. Move Focus Left

Write a function `goLeft` that:

* moves the focus one element to the left
* returns the zipper unchanged if movement is not possible

Example:

```haskell
goLeft ([1],[2,3])
-- result: ([],[1,2,3])
```

---

### 5. Replace the Focus

Write a function `replaceFocus` that:

* replaces the focused element with a new value
* keeps the rest of the zipper unchanged

Example:

```haskell
replaceFocus 10 ([],[1,2,3])
-- result: ([],[10,2,3])
```

---

### 6. Insert at Focus

Write a function `insertAtFocus` that:

* inserts a new element at the current focus
* shifts the old focus to the right

Example:

```haskell
insertAtFocus 5 ([],[1,2,3])
-- result: ([],[5,1,2,3])
```

---

### 7. Delete Focus

Write a function `deleteFocus` that:

* removes the focused element
* moves the focus to the next element on the right
* if no right element exists, moves focus to the left

Example:

```haskell
deleteFocus ([],[1,2,3])
-- result: ([],[2,3])
```

---

### 8. Convert Zipper Back to List

Write a function `toList` that:

* converts a `ListZipper` back into a normal list

Example:

```haskell
toList ([2,1],[3,4])
-- result: [1,2,3,4]
```

---

### 9. Safe Navigation with Maybe

Write safe navigation functions:

```haskell
safeGoRight :: ListZipper a -> Maybe (ListZipper a)
safeGoLeft  :: ListZipper a -> Maybe (ListZipper a)
```

They should return `Nothing` when movement is not possible.

Example:

```haskell
safeGoLeft ([],[1,2])
-- result: Nothing
```

---

### 10. Zipper Navigation Program

Write a function `navigate` that:

* takes a list of moves (`1` = right, `-1` = left)
* applies them to a zipper
* returns the final zipper wrapped in `Maybe`

Type:

```haskell
navigate :: [Int] -> ListZipper a -> Maybe (ListZipper a)
```

Example:

```haskell
navigate [1,1,-1] (fromList [10,20,30])
-- result: Just ([10],[20,30])
```

---

## Notes

* A zipper represents **focus + context**
* Navigation is done by rearranging data, not mutation
* Zippers allow efficient local updates in immutable structures
* This exercise set focuses on **list zippers**, but the same idea applies to trees

---

