# Generalizing Random Pairs

Use the provided rand function and your randLetter function to make a function
that generates a random pair of a character and an integer.

    randPair :: Gen (Char, Integer)

Generate the letter first, then the number.  When you give this function (Seed
1) it gives you the random pair ('l',282475249).

Here we're starting to see the Gen type alias pay off.  Without Gen, the type
would have been:

    randPair :: Seed -> ((Char, Integer), Seed)

Still understandable, but the nested tuples are starting to obscure things
slightly.

Now generalize the above function.

    generalPair :: Gen a -> Gen b -> Gen (a,b)

This function makes the Gen type alias almost essential.  Here's what we would
have had to write if we didn't have Gen:

    generalPair :: (Seed -> (a, Seed)) -> (Seed -> (b, Seed)) -> (Seed -> ((a,b), Seed))

Removing the unnecessary parentheses gets us this type signature, which might
help you a little when implementing the function.

    generalPair :: (Seed -> (a, Seed)) -> (Seed -> (b, Seed)) -> Seed -> ((a,b), Seed)

Test this generalized function by comparing its output to what you got from
randPair.

## Generalizing Pairs Even More

This generalPair function can be generalized even more.  Instead of always
constructing pairs, you should be able to have a generalization that can
construct anything.  All you need to do is pass in a function that does the
constructing.  Call this even more generalized function generalB.  Once you
have it implemented, write a new generalPair2 function in terms of generalB.

