require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
    allow(STDIN).to receive(:gets).and_return('100')
  end

  describe '#deposit' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double("Transaction").as_stubbed_const
      expect(transaction).to receive(:new)
      subject.deposit
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.deposit
    end
  end

  describe '#withdraw' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double("Transaction").as_stubbed_const
      expect(transaction).to receive(:new)
      subject.withdraw
    end

    it 'should call the #push_to_activity method' do
      expect(@bank).to receive(:push_to_activity)
      @bank.withdraw
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
