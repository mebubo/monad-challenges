# Permutations of more things

You probably noticed that allPerms3 is getting painful to write.  Worse still,
it does not help us generate permutations of four or more things.  We need to
take a different approach of we want this to scale easily.  This is a
difficult step, so we are not going to make you figure it out yourself.  All
the same, spend some time thinking about how you might do it.  Here is a hint
though.  You probably noticed that allPerms has ([a] -> [b]) in its type
signature and allPerms3 has ([a] -> [b] -> [c]) in its type signature.  When
you are playing with this, do not try to generalize that pattern to `[[a]]`.
That is not an adequate generalization because it only allows a and has no b
or c anywhere.  Spend some time thinking about this before you continue.  But
don't be discouraged if you can't figure it out.  This one is hard.

Back?  If you figured it out, congratulations.  If not, here is the hex
encoded type signature for a function called permStep that is the
generalization we need.

    7065726D53746570203A3A205B61202D3E20625D202D3E205B615D202D3E205B625D

Now write that function.  There is only one possible way to do it.  If you can
write a function that compiles, then your answer is correct.

Now use the permStep function to implement allPerms2 and allPerms3 and check
that the new implementations have the same behavior as before.
Once you do this it should be pretty obvious how you would use permStep to
impliment allPerms4 and beyond. Also notice how permStep compares to allPerms.
