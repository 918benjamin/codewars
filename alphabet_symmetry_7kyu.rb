=begin
https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0/train/ruby

Alphabet Symmetry (7 kyu)

Consider the word "abode". We can see that the letter a is in position 1 and b
is in position 2. In the alphabet, a and b are also in positions 1 and 2.
Notice also that d and e in abode occupy the positions they would occupy in the
alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy
their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

PROBLEM:
- input:
- output:

=end

# Test cases
p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) ==[4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]