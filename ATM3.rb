class Atm
  def initialize(atm_balance)
    @atm_balance = atm_balance
    @location = "Sydney"
  end

    attr_accessor :atm_balance

  def allocate(addition)
    @atm_balance = @atm_balance + addition
  end

  def dispense(deduction)
    @atm_balance = @atm_balance - deduction

    if @atm_balance >= deduction
    else
      puts "There are not enough funds in the ATM currently sorry. Please try another one in your area."
    end

  end
end

class Account
  def initialize(name, initial_balance)
    @name = name
    @account_no = account_no
    @initial_balance = initial_balance
    @pin = 1234
  end

    attr_accessor :name, :account_no, :initial_balance, :pin

  def deposit(atm, installment)
    if @pin == pin && @account_no == @account_no
    current_balance = @initial_balance + installment
      puts "Your current balance is: #{current_balance}"
    atm.allocate(installment)
    end
  end

  def withdraw(atm, withdrawal)
    if @initial_balance >= withdrawal && atm.atm_balance >= withdrawal && @pin == pin && @account_no == @account_no
    current_balance = @initial_balance - withdrawal
      puts "Your current balance is: #{current_balance}"
    atm.dispense(withdrawal)
    else
      puts "You currently do not have sufficient funds in your account."
    end
  end

  def verify_account_no
    @account_no == @account_no
  end

  def verify_pin(pin)
    while @pin != pin
      puts "Sorry, wrong pin. Please try again."
      pin = gets.chomp.to_i
    end
  end
end

def create_account
  puts "Welcome to Padawanboss's ATM. What's your name?"
  name = gets.chomp

  puts "Okay #{name}, how much would you like to deposit to your initial balance then?"
  initial_balance = gets.chomp.to_i

  puts "Okay, you are all set up #{name}. Your initial balance is $#{initial_balance}."

  Account.new(name, initial_balance)
end

def verification_steps(customer_1)
  puts "Okay, please enter in your account number"
  account_no = gets.chomp.to_i
  customer_1.verify_account_no

  puts "And now your pin number please"
  pin = gets.chomp.to_i
  customer_1.verify_pin(pin)
end

customer_1 = create_account
broadway_atm = Atm.new(10000)

puts "Is there anything else I can help you with today?"
puts "1. Make another deposit"
puts "2. I would like to withdraw"
puts "3. No, that's all thanks"

answer = gets.chomp.to_i

#deposit
  if answer == 1
    verification_steps(customer_1)
    puts "Okay, how much do you want to deposit?"
    answer = gets.chomp.to_i
    installment = answer
    customer_1.deposit(broadway_atm, installment)

#withdraw
  elsif answer == 2
    verification_steps(customer_1)
    puts "Okay, how much do you want to withdraw?"
    answer = gets.chomp.to_i
    withdrawal = answer
    customer_1.withdraw(broadway_atm, withdrawal)

#exit
  else answer == 3
    puts "Have a nice day!"
  end
