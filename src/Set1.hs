{-# LANGUAGE MonadComprehensions #-}
{-# LANGUAGE RebindableSyntax  #-}

module Set1 where

import MCPrelude

fiveRands :: [Integer]
fiveRands = take 5 $ map fst $ randoms (mkSeed 1)

randoms :: Seed -> [(Integer, Seed)]
randoms s = iter (rand s)
    where
        iter :: (Integer, Seed) -> [(Integer, Seed)]
        iter (i, s) = (i, s) : iter (rand s)

check1 = product fiveRands
