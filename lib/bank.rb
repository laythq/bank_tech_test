require 'date'
require_relative 'statement'
require_relative 'transaction'

class Bank
  attr_reader :balance, :activity

  def initialize
    @balance = 0
    @activity = []
  end

  def deposit(amount)
    @balance += amount
    new_deposit = Transaction.new(amount, 0, @balance)
    push_to_activity(new_deposit)
  end

  def withdraw(amount)
    @balance -= amount
    new_withdrawal = Transaction.new(0, amount, @balance)
    push_to_activity(new_withdrawal)
  end

  def show_statement
    Statement.new(@activity)
  end

  private

  def push_to_activity(object)
    @activity.push(object)
  end
end
