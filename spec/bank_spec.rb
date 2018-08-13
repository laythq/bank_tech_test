require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  describe '#show_options' do
    it 'should print a list of options to the console' do
      expect { @bank.show_options }.to output("1. Show Balance\n2. Deposit\n3. Withdrawal\n4. Exit\n").to_stdout
    end
  end

  describe '#command' do
    it 'should take stdin from the user or a StringIO object for tests' do
      @user_input = StringIO.new("1")
      @input_received = @bank.command(@user_input)
      expect(@input_received).to eq("1")
    end
  end
end
