require 'date'
require 'bank'

class Statement

  attr_reader :balance

  def initialize(balance = 0, activity = [])
    @balance = balance
    @activity = activity
  end

def bank_statement
  puts "date || credit || debit || balance"
  puts "#{Time.now.strftime("%d/%m/%Y")} || || #{@balance}"
end

end
#
# activity.each do {|x|
#   puts "#{x.date} || #{x.}"
# }
