balance = 100

def deposit(amount, addition)
  amount = amount + addition
end

def withdraw(amount, deduction)
  amount = amount - deduction
end

def display_balance(current_balance)
  puts "Your new balance is $#{current_balance}"
end

# loop through 10 times
10.times do
puts "Hey, what do you want to do today?"
puts "Your opening balance is $#{balance}"
puts "1. Withdraw"
puts "2. Depost"
puts "3. Exit"

answer = gets.chomp.to_i
puts answer

# withdraw
  if answer.to_i == 1
      puts "How much do you want to withdraw?"
      answer = gets.chomp.to_i
      withdrawal = answer
    balance = withdraw(balance, withdrawal)
    display_balance(balance)

# deposit
  elsif answer.to_i == 2
      puts "how much do you want depost?"
      answer = gets.chomp.to_i
      installment = answer
    balance = deposit(balance, installment)
    display_balance(balance)

# exit
  elsif answer.to_i == 3
    puts "have a nice day! :)"

# something other than 1 or 2
  else
    puts "Please try again!"
  end
end
