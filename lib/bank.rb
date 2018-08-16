require 'date'
require_relative 'statement'
require_relative 'transaction'

class Bank
  attr_reader :balance, :all_transactions

  def initialize
    @balance = 0
    @all_transactions = []
  end

  def deposit(amount)
    @balance += amount
    new_deposit = Transaction.new(amount, nil, @balance)
    record_transaction(new_deposit)
  end

  def withdraw(amount)
    @balance -= amount
    new_withdrawal = Transaction.new(nil, amount, @balance)
    record_transaction(new_withdrawal)
  end

  def show_statement
    Statement.new(@all_transactions)
  end

  private

  def record_transaction(object)
    @all_transactions.push(object)
  end
end
