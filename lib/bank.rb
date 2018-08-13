require 'date'
require_relative 'statement'

class Bank

  attr_reader :balance

  def initialize
    @balance = 0
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
      when "exit"
        exit
      else
        p "Please select a valid option"
    end
  end

  def deposit(stdin = $stdin)
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
