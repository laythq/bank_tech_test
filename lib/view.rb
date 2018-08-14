require_relative 'app'

class View

  def initialize
    @app = App.new
  end

  def show_options
    puts '1. Bank Statement'
    puts '2. Deposit'
    puts '3. Withdrawal'
    puts '4. Exit'
  end

  def interactive_menu(stdin = $stdin)
    loop do
      show_options
      @app.command(stdin)
    end
  end
end
