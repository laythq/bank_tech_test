require 'date'

class Statement

  attr_reader :balance

  def initialize(balance = 0, activity = [])
    @balance = balance
    @activity = activity
    bank_statement
  end

def bank_statement
  puts "date || credit || debit || balance"
  @activity.each {|x|
    puts "#{x.date} || #{x.credit} || #{x.debit} || #{@balance}" }
end

end
