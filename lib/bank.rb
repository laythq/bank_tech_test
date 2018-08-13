class Bank

  def show_options
    puts "1. Show Balance"
    puts "2. Deposit"
    puts "3. Withdrawal"
    puts "4. Exit"
  end

  def command(option)
    case option
      when "4"
        exit
      else
        puts "Please select a valid option"
      end
  end

end
