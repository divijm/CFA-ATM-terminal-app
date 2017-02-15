@balance = 100

def withdraw(amount)
  @balance = @balance - amount.to_i
  #puts "New Balance: " + @balance.to_s
end

def deposit(amount)
  @balance = @balance + amount.to_i
  #puts "New Balance: " + @balance.to_s
end

def menu
  puts "Would you like to Withdraw (1) or Deposit (2)? Select either '1' or '2' please."
  option = gets.chomp
    if option == "1"
      puts "How much would you like to withdraw?"
      withdrawal = gets.chomp
      option = withdraw(withdrawal)
      puts "You now have " + @balance.to_s
    elsif option == "2"
      puts "How much would you like to Deposit?"
      deposit_amount = gets.chomp
      option = deposit(deposit_amount)
      puts "You now have " + @balance.to_s
    else
      puts "Please try again! Make sure you either use '1' or '2'"
    end
end

10.times do
  menu
end


# more efficient!
# def displayBalance
#  puts "New Balance: " + @balance.to_s
#end
