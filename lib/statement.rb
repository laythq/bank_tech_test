require 'date'
require 'bank'

class Statement

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

def bank_statement
  puts "date || credit || debit || balance"
  puts "#{Time.now.strftime("%d/%m/%Y")} || || #{@balance}"
end

end
