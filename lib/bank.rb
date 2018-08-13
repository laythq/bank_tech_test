require 'date'

class Bank

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
        show_balance
      when "test"
        p "test"
      when "exit"
        exit
      else
        p "Please select a valid option"
    end
  end

  def show_balance
    p "date || credit || debit || balance \n #{Time.now.strftime("%d/%m/%Y")} || || 0.00"
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      command(stdin)
    end
  end

end
