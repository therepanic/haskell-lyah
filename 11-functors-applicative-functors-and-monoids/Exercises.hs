import Data.Char (toUpper)
import Data.Monoid(First(..))
-- subexercise 1

-- instance Functor (Either e) where
--     fmap _ (Left l) = Left (l)
--     fmap f (Right r) = Right (f r)

-- subexercise 2
shout :: IO String
shout = (\s -> map toUpper s ++ "!!!") <$> getLine

-- subexercise 3
composeWith f d = fmap f d

-- subexercise 4
allCombinations :: [a] -> [b] -> [(a, b)]
allCombinations a b = ((,) <$> a) <*> b

-- subexercise 5
combineFunctions a b c = (,,) <$> a <*> b <*> c

-- subexercise 6
newtype ZipList a = ZipList {
    getZipList :: [a]
}

instance Applicative ZipList where
    pure x = ZipList (repeat x)
    ZipList fs <*> ZipList xs = ZipList (zipWith ($) fs xs)

zipWithA :: (a -> b -> c) -> ZipList a -> ZipList b -> ZipList c
zipWithA f xs ys = f <$> xs <*> ys

-- subexercise 7
newtype PairM a b = PairM { getPairM :: (a, b) }
instance (Semigroup a, Semigroup b) => Semigroup (PairM a b) where
  PairM (a1, b1) <> PairM (a2, b2) =
    PairM (a1 <> a2, b1 <> b2)

instance (Monoid a, Monoid b) => Monoid (PairM a b) where
  mempty = PairM (mempty, mempty)

combinePairs :: (Monoid a, Monoid b) => [(a,b)] -> (a,b)
combinePairs xs =
  getPairM (mconcat (map PairM xs))

-- subexercise 8
firstSuccess :: [Maybe a] -> Maybe a
firstSuccess xs = getFirst(mconcat (map First xs))
lastSuccess xs = getLast(mconcat (map Last xs))