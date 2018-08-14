require_relative 'bank'


class App

  # attr_reader :balance, :activity

  def initialize
    @bank = Bank.new
    @balance = 0
    @activity = []
  end

  def deposit(stdin = $stdin)
    puts "How much would you like to deposit?"
    amount = stdin.gets.chomp
    @balance += amount.to_f
    new_deposit = Transaction.new(amount, @balance)
    push_to_activity(new_deposit)
  end

  def withdraw(stdin = $stdin)
    puts "How much would you like to withdraw?"
    amount = stdin.gets.chomp
    @balance -= amount.to_f
    new_withdrawal = Transaction.new(amount, @balance)
    push_to_activity(new_withdrawal)
  end

  def push_to_activity(object)
    @activity.push(object)
  end

  def show_options
    puts "1. Bank Statement"
    puts "2. Deposit"
    puts "3. Withdrawal"
    puts "4. Exit"
  end

  def command(stdin = $stdin)
    input = stdin.gets.chomp
    case input
      when "1"
        Statement.new(@activity)
      when "test"
        p "test"
      when "2"
        deposit
      when "3"
        withdraw
      when "4"
        exit
      else
        p "Please select a valid option"
    end
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      command(stdin)
    end
  end

end
