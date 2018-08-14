require_relative 'app'

class View

  def show_options
    puts '1. Bank Statement'
    puts '2. Deposit'
    puts '3. Withdrawal'
    puts '4. Exit'
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      command(stdin)
    end
  end
end

#
# app = App.new
# app.interactive_menu
