require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  describe '#show_statement' do
    it 'should create a new statement object' do
      statement = class_double('Statement').as_stubbed_const
      expect(statement).to receive(:new)
      subject.show_statement
    end
  end

  describe '#deposit' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double('Transaction').as_stubbed_const
      expect(transaction).to receive(:new)
      @bank.deposit(100)
    end
  end

  describe '#withdraw' do
    it 'should create a new Transaction object with a date and time' do
      transaction = class_double('Transaction').as_stubbed_const
      expect(transaction).to receive(:new)
      @bank.withdraw(100)
    end
  end
end
