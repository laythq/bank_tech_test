require 'date'
require_relative 'statement'
require_relative 'deposit'
require_relative 'withdrawal'

class Bank

  attr_reader :balance, :activity

  def initialize
    @balance = 0
    @activity = []
  end

  def deposit(stdin = $stdin)
    puts "How much would you like to deposit?"
    amount = stdin.gets.chomp
    @balance += amount.to_f
    new_deposit = Deposit.new(amount, @balance)
    push_to_activity(new_deposit)
  end

  def withdraw(stdin = $stdin)
    puts "How much would you like to withdraw?"
    amount = stdin.gets.chomp
    @balance -= amount.to_f
    new_withdrawal = Withdrawal.new(amount, @balance)
    push_to_activity(new_withdrawal)
  end

  def push_to_activity(object)
    @activity.push(object)
  end
end
