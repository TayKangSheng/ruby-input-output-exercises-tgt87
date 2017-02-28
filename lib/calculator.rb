# Challenge 1 - Calculator
# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:
#
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9


p 'What calculation would you like to do? (add, sub, mult, div)'
action = gets.chomp
p 'What is number 1?'
num_1 = gets.chomp.to_i
p 'What is number 2?'
num_2 = gets.chomp.to_i

def add(num_1, num_2)
  num_1 + num_2
end

def sub(num_1, num_2)
  num_1 - num_2
end

def mult(num_1, num_2)
  num_1 * num_2
end

def div(num_1, num_2)
  num_1 / num_2
end

if action == "add"
  result = add(num_1, num_2)
elsif action == "sub"
  result = sub(num_1, num_2)
elsif action == "mult"
  result = mult(num_1, num_2)
elsif action == "div"
  result = div(num_1, num_2)
end
p "result is #{result}"
