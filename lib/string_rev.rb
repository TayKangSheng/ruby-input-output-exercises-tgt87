# Challenge 2 - Reverse a string
#
# Reverse a string in place. In other words, do not create a new string or use other methods on the string such as reverse. The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values. Below is some sample output.
#
# Enter a string:
# reverse_me
# em_esrever

p "Enter a string:"
str = gets.chomp

# str.split('')
# rev_arr = []
# i = 0
# while i < str.length
#   rev_arr.unshift(str[i])
#   i += 1
# end
# p rev_arr.join('')

rev_str = str.chars.reduce { |x, y| y + x }
p rev_str
