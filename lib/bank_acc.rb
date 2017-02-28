# Challenge 3 - Bank Transactions
#
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

$balance = 0
$done = false
def check_balance
  p "Your balance is #{$balance}"
end

def deposit(amt)
  $balance += amt
  p "Your current balance is #{$balance}"
end

def withdraw(amt)
  if $balance > amt
    $balance -= amt
    p "Your current balance is #{$balance}"
  else
    p "Your balance is less than what you intent to withdraw. Pls deposit some money first."
  end
end

def is_done
  p "Are you done?"
  ans = gets.chomp
  if ans == "yes"
    $done = true
  else
    $done = false
  end
end

check_balance

while $done == false
  p "What would you like to do? (deposit, withdraw, check_balance)"
  action = gets.chomp
  if action == "check_balance"
    check_balance
    is_done
  elsif action == "deposit"
    p "Enter amt to deposit:"
    amt = gets.chomp.to_i
    deposit(amt)
    check_balance
    is_done
  elsif action == "withdraw"
    p "Enter amt to withdraw"
    amt = gets.chomp.to_i
    withdraw(amt)
    check_balance
    is_done
  end
end
p "thank you!"
