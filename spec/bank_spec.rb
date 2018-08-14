require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
    allow(STDIN).to receive(:gets).and_return('100')
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
