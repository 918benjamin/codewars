=begin
Find all pairs

You are given an array of integers, your task will be to count all pairs in that
array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once.
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

PROBLEM:
- input: array of integers
- output: integer (number of pairs)
- a pair is two of the same number
- count all pairs and return count of how many pairs there are

Approach:
- Iterate through the integers in the given array
  - if the current integer


=end

require "pry"
require "pry-byebug"

# def pairs(arr)
#   count = 0
#   more_than_one = arr.select {|int| arr.count(int) >= 2}.sort
#   more_than_one.each_with_index do |int, index|
#     if index.even? && int == more_than_one[index + 1]
#       count += 1
#     else
#       next
#     end
#   end
#   count
# end

def pairs(arr) 
  tally = 0
  hsh = arr.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end
  
  hsh.each do |num, count|
    tally += (count / 2) #if count >= 2
  end
  
  tally
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
