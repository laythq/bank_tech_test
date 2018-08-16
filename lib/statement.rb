require 'date'

class Statement

  attr_reader :balance

  def initialize(activity = [])
    @activity = activity
    bank_statement
  end

  def bank_statement
    puts 'date || credit || debit || balance'
    @activity.reverse.each {|x|
      puts "#{x.date.strftime('%d/%m %H:%M')} || #{x.credit} || #{x.debit} || #{x.balance}" }
  end

end
