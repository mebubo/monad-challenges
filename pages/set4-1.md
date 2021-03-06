# Generalizing State and Maybe

Now that you've spent some time building general abstractions for working with
state and failing computations we want to go back through and look for
commonalities.

First, go back through all the code you wrote for Set 1, Find all the
generalized functions and copy their type signatures (not the code) into a new
file.  You can skip the functions that solved special case exercises.  Then do
the same thing for Set 2 and copy those type signatures into the same file.

Now look at these type signatures and look for functions from Set 1 that have
a similar type signature pattern to functions from Set 2.  The type signatures
obviously won't be the same, but there are similar patterns in both sets.  You
should come up with two pairs of function equivalences.

Here is the hex encoded answer.  But again, spend some effort trying to see
this correspondence for yourself.

    67656E54776F207E3D206C696E6B2C2067656E6572616C42207E3D20794C696E6B

Now that you have the correspondences, for each pair write a more general type
signature that works for both the Gen version and the Maybe version.  Think
back to things we've done before.  If two signatures are exactly the same
except for one difference, replace that difference with a type variable.  It
doesn't matter what letter you use for the type variable as long as it is
different from all the other type variables that occur in the signature.  But
just to make your life easier we'll give you a hint: use the letter 'm'.
Here's the hex-encoded answer:

    67656E54776F2C206C696E6B0A20203A3A206D2061202D3E202861202D3E206D206229202D3E206D20620A0A67656E6572616C422C20794C696E6B0A20203A3A202861202D3E2062202D3E206329202D3E206D2061202D3E206D2062202D3E206D2063
