=begin
https://www.codewars.com/kata/5168b125faced29f66000005/
Complete the solution so that it returns the number of times the search_text is
found within the full_text.

Examples:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Problem:
- input: two strings
  - first string is the full text, second string is the search substring
- output: integer
  - number of times the substring appears in the full text

Approach:
- Initialize a counter to 0
- initialize a len variable to the search_text string length
- Iterate through an array of the characters in full_text with index. for each character
  - if the character matches the first character of the search_text
    - check a slice from current character, len characters long
      - is that slice == search_text? counter += 1
- return counter

=end
require "pry"
require "pry-byebug"

# def solution(full_text, search_text)
#   counter = 0
#   len = search_text.length

#   full_text.chars.each_with_index do |char, index|
#     if char == search_text[0]
#       counter += 1 if full_text.slice(index, len) == search_text
#     end
#   end
#   counter
# end

### Codewars solution using #scan
def solution(full_text, search_text)
  full_text.scan(search_text).size
end

# Test cases
p solution('aa_bb_cc_dd_bb_e', 'bb') == 2
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('aaabbbcccc', 'bbb') == 1