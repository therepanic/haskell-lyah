import Data.Char (toUpper)
import Data.List (foldl')
import Control.Exception
import System.Directory.Internal.Prelude (getArgs)
import System.Random (randomRIO)

-- subexercise 1
main1 = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")

-- subexercise 2
reco :: IO ()
reco = do
    line <- getLine
    if line == "" then return ()
    else do
        putStrLn line
        reco

-- subexercise 3
read' :: IO ()
read' = do
    sentence <- getContents
    putStr (map toUpper sentence)

-- subexercise 4
readLen :: IO ()
readLen = do
    line <- getLine
    putStrLn (line ++ " (" ++ show (length line) ++ ")")

-- subexercise 5
shor :: IO ()
shor = do
    input <- getContents
    putStr (unlines (filter (\x -> length x < 8) (lines input)))

-- subexercise 6
rpd :: IO ()
rpd = do
    input <- getContents
    let inputs = lines input
    let (f, s) = foldl' (\(n, acc) s -> (n + 1, (show n ++ " " ++ s) : acc)) (1, []) inputs
    mapM_ putStrLn (reverse s)
rpd1 :: IO ()
rpd1 = do
    input <- getContents
    let inputs = lines input
    mapM_ putStrLn (zipWith (\i line -> show i ++ " " ++ line) [1..] inputs)

-- subexercise 7
isPalindrome :: IO ()
isPalindrome = do
    line <- getLine
    if line /= "" then do
        putStrLn (if line == reverse line then "palindrome" else "not a palindrome")
        isPalindrome
    else
        return ()

-- subexercise 8
runhaskell :: IO ()
runhaskell = do
    args <- getArgs
    case args of
        [path] -> do
            contents <- readFile path
            putStrLn $
                "The file has " ++ show (length (lines contents)) ++ " lines"

-- subexercise 9
safeRead :: String -> IO ()
safeRead path = do
    input <- try (readFile path) :: IO (Either IOException String)
    case input of
        Left _ -> putStrLn "file does not exist"
        Right s -> putStrLn s

-- subexercise 10
game :: IO ()
game = do
    putStrLn "Guess the number (1–10):"
    line <- getLine
    if line == ""
    then return ()
    else do
        let guess = read line :: Int
        secret <- randomRIO (1, 10)
        if guess == secret
            then putStrLn "You are correct!"
            else putStrLn ("Sorry, it was " ++ show secret)
        game
