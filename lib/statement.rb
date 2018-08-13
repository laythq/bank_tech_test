require 'date'

class Statement

def bank_statement
  puts "date || credit || debit || balance"
  puts "#{Time.now.strftime("%d/%m/%Y")} || || 0.00"
end

end
