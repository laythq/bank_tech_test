require 'date'
# require_relative 'statement'
require_relative 'deposit'

class Bank

  attr_accessor :balance, :activity

  def initialize
    @balance = 0
    @activity = []
  end

  def show_options
    puts "1. Bank Statement"
    puts "2. Deposit"
    puts "3. Withdrawal"
    puts "4. Exit"
  end

  def command(stdin = $stdin)
    # input = stdin.gets
    # input ||= ' '
    # input = input.chomp
    input = stdin.gets.chomp
    case input
      when "1"
        statement = Statement.new(@balance)
        statement.bank_statement
      when "test"
        p "test"
      when "2"
        deposit
      when "3"
        withdraw
      else
        p "Please select a valid option"
    end
  end

  def deposit(stdin = $stdin)
    amount = stdin.gets.chomp
    @balance += amount.to_i
    # date = stdin.gets.chomp
    @activity.push(Deposit.new(@balance))
  end

  def withdraw(stdin = $stdin)
    input = stdin.gets.chomp
    @balance += input.to_i
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      command(stdin)
    end
  end

end
