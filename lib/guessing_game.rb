# Create a program that asks the user to guess a number between 1 and 100. Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct. The user should continue to make guesses until he guesses correctly. Also, once the user guesses correctly, the program should print the number of guesses needed to arrive at the correct answer. Below is sample output:
#
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries

secret_number = rand(100)
wrong = true
count = 0
p "Guess a no. between 1 & 100"
while wrong
guess_number = gets.chomp.to_i
  if guess_number < secret_number
      p "The number is higher than #{guess_number}. Guess again"
      count += 1
  elsif guess_number > secret_number
      p "The number is lower than #{guess_number}. Guess again"
      count += 1
  else
      p "Correct!"
      count += 1
      wrong = false
  end
end
p "You got it in #{count} tries"
