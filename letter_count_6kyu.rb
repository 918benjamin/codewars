=begin
Count letters in string (6 kyu)
https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby

In this kata, you've to count lowercase letters in a given string and return the
letter count in a hash with 'letter' as key and count as 'value'. The key must
be 'symbol' instead of string.

Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Problem
- input: string
- output: hash (letter symbol keys, count of that letter values)
- key must be a symbol

Approach:
- Initialize an empty hash, hsh
- iterate through an array of the characters in the given string. For each char
  - add the count of the current char to the hash as the symbol version of the char
- return the hash

=end

### My solution
# def letter_count(str)
#   str.chars.each_with_object({}) do |char, hsh|
#     hsh[char.to_sym] = str.count(char)
#   end
# end

### Codewars solution
# I was trying to do something similar, but couldn't figure out how to do the
# map. Now I see it was by returning a nested array, the coercing to a hash.
# Also interesting to see the &:to_sym - unclear on that without more digging
# def letter_count(str)
#   str.chars.group_by(&:to_sym).map { |k,v| [k, v.size] }.to_h
# end

### My alternative solution
def letter_count(str)
  str.chars.group_by { |char| char.to_sym }.map { |k, v| [k, v.count] }.to_h
end

# Test case
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}

