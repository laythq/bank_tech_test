require 'app'

describe App do
  before(:each) do
    @app = App.new
    allow(STDIN).to receive(:gets).and_return('100')
  end

  describe '#show_options' do
    it 'should print a list of options to the console' do
      expect { @app.show_options }.to output("1. Bank Statement\n2. Deposit\n3. Withdrawal\n4. Exit\n").to_stdout
    end
  end

  describe '#deposit' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double('Transaction').as_stubbed_const
      expect(transaction).to receive(:new)
      subject.deposit
    end
  end

   describe '#withdraw' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double('Transaction').as_stubbed_const
      expect(transaction).to receive(:new)
      subject.withdraw
    end
  end

  describe '#command' do
    it 'should take stdin from the user or a StringIO object for tests' do
      @user_input = StringIO.new('test')
      @input_received = @app.command(@user_input)
      expect(@input_received).to eq('Please select a valid option')
    end

    it 'if the user selects Show Balance, their account details will be printed' do
      statement = class_double('Statement').as_stubbed_const
      expect(statement).to receive(:new)
      # expect(statement).to receive(:bank_statement)
      @user_input = StringIO.new('1')
      @app.command(@user_input)
    end

    it 'if the user selects Deposit, the #deposit method is called' do
      expect( @app ).to receive(:deposit)
      @user_input = StringIO.new('2')
      @app.command(@user_input)
    end

    it 'if the user selects Withdraw, the #withdraw method is called' do
      expect( @app ).to receive(:withdraw)
      @user_input = StringIO.new('3')
      @app.command(@user_input)
    end
  end
end
