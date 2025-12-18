
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.Identity
import Control.Monad.State.Class  (get, put)
import Control.Monad.Reader.Class (ask)
import Control.Monad.Writer.Class (tell, MonadWriter)
import Control.Monad.Writer

-- subexercise 1
logAdd :: Integer -> Writer [String] Integer
logAdd x = writer (x + 1, ["Added 1 to " ++ show x])

-- subexercise 2
addThenMul :: Integer -> Writer [String] Integer
addThenMul x = do
    tell ["start"]
    let a = x + 1
    tell ["after add"]
    let b = a * 2
    tell ["after mul"]
    return b

-- subexercise 3
data Config = Config {threshold :: Integer}

checkValue :: Integer -> Reader Config Bool
checkValue x = ask >>= \p -> return (x > threshold p)

-- subexercise 4
stringLength :: Reader String Int
stringLength = length <$> ask
stringLength' :: Reader String Int
stringLength' = asks length

-- subexercise 5
countChars :: String -> State Int Int
countChars [] = do
    n <- get
    return (n + 1)
countChars (_:xs) = do
    n <- get
    put (n + 1)
    countChars xs

-- subexercise 6
pushPop :: State [Int] Int
pushPop = do
    s1 <- get
    put (5:s1)

    s2 <- get
    put (10:s2)

    s3 <- get
    put (tail s3)
    return (head s3)

-- subexercise 7
nextFib :: State (Int, Int) Int
nextFib = do
    (x1, x2) <- get
    put (x2, x1 + x2)
    return 0

-- subexercise 8
logIfGreater :: Int -> Reader Int (Writer [String] Int)
logIfGreater n = do
    threshold <- ask
    let write = writer (n, [if n > threshold then "greater" else "not greater"])
    return write


-- subexercise 9
validateList :: [Int] -> State Int [Int]

validateList [] = return []

validateList (x:xs) |
    x < 0 = validateList xs
    | otherwise = do
        n <- get
        put (n + 1)
        validateList xs

-- subexercise 10
process :: [Integer] -> StateT Integer (ReaderT Config (WriterT [String] Identity)) Integer
process [] = return 0
process a = do
    tell ["start"]
    cfg <- ask
    let th = threshold cfg
    let helper x = case x of
            [] -> pure ()
            (y:ys) ->
                do
                    tell ["checked " ++ show y]
                    v <- get
                    put(if y > th then v + 1 else v)
                    helper ys
    helper a
    get

