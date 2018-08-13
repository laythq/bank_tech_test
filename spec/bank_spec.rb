require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
    allow(STDIN).to receive(:gets).and_return('100')
  end

  describe '#show_options' do
    it 'should print a list of options to the console' do
      expect { @bank.show_options }.to output("1. Bank Statement\n2. Deposit\n3. Withdrawal\n4. Exit\n").to_stdout
    end
  end

  describe '#command' do
    it 'should take stdin from the user or a StringIO object for tests' do
      @user_input = StringIO.new("test")
      @input_received = @bank.command(@user_input)
      expect(@input_received).to eq("test")
    end

    it 'if the user selects Show Balance, their account details will be printed' do
      @user_input = StringIO.new("1")
      expect { @bank.command(@user_input) }.to output("date || credit || debit || balance\n#{Time.now.strftime("%d/%m/%Y")} || || #{@bank.balance}\n").to_stdout
    end

    it 'if the user selects Deposit, the #deposit method is called' do
      expect( @bank ).to receive(:deposit)
      @user_input = StringIO.new("2")
      @bank.command(@user_input)
    end

    it 'if the user selects Withdraw, the #withdraw method is called' do
      expect( @bank ).to receive(:withdraw)
      @user_input = StringIO.new("3")
      @bank.command(@user_input)
    end
  end

  describe '#deposit' do
    it 'should create a new Deposit object with a date and time' do
      deposit = class_double("Deposit").as_stubbed_const
      expect(deposit).to receive(:new)
      subject.deposit
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.deposit
    end
  end

  describe '#withdraw' do
    it 'should create a new Deposit object with a date and time' do
      withdrawal = class_double("Withdrawal").as_stubbed_const
      expect(withdrawal).to receive(:new)
      subject.withdraw
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.withdraw
    end
  end

  describe '#push_to_activity' do
    it 'should add a new activity to the activity array' do
      deposit = instance_double("Deposit")
      @bank.push_to_activity(deposit)
      expect(@bank.activity).to include(deposit)
    end
  end
end
