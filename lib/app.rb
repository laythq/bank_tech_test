require_relative 'bank'

class App
  def initialize
    @bank = Bank.new
  end

  def deposit(stdin = $stdin)
    puts 'How much would you like to deposit?'
    amount = stdin.gets.chomp
    @bank.deposit(amount.to_f)
  end

  def withdraw(stdin = $stdin)
    puts 'How much would you like to withdraw?'
    amount = stdin.gets.chomp
    @bank.withdraw(amount.to_f)
  end

  def show_options
    puts '1. Bank Statement'
    puts '2. Deposit'
    puts '3. Withdrawal'
    puts '4. Exit'
  end

  def command(stdin = $stdin)
    input = stdin.gets.chomp
    case input
    when '1'
      @bank.show_statement
    when '2'
      deposit
    when '3'
      withdraw
    when '4'
      exit
    else
      p 'Please select a valid option'
    end
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      command(stdin)
    end
  end
end
