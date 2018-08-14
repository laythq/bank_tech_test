require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  describe '#show_statement' do
    it 'should create a new statement object' do
      statement = class_double("Statement").as_stubbed_const
      expect(statement).to receive(:new)
      subject.show_statement
    end
  end

  describe '#deposit' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double("Transaction").as_stubbed_const
      expect(transaction).to receive(:new)
      subject.deposit(100)
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.deposit(100)
    end
  end

  describe '#withdraw' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double("Transaction").as_stubbed_const
      expect(transaction).to receive(:new)
      subject.withdraw(100)
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.withdraw(100)
    end
  end

  describe '#push_to_activity' do
    it 'should add a new activity to the activity array' do
      transaction = instance_double("Transaction")
      @bank.push_to_activity(transaction)
      expect(@bank.activity).to include(transaction)
    end
  end
end
