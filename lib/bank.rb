class Bank

  def show_options
    puts "1. Show Balance"
    puts "2. Deposit"
    puts "3. Withdrawal"
    puts "4. Exit"
  end

  def command(stdin = $stdin)
    input = stdin.gets.chomp
    case input
      when "test"
          return "test"
      else
          puts "Please select a valid option"
    end
  end

end
