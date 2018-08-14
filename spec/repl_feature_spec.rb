require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
    @date = Time.now.strftime('%d/%m %H:%M')
  end

  describe 'Showing bank statement: ' do
    it 'should print a statement to the page' do
      expect { @bank.show_statement }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe 'Making a deposit and printing new statement' do
    it 'should print the statement with the correct sum' do
      @bank.deposit(100)
      expect { @bank.show_statement }.to output("date || credit || debit || balance\n#{@date} || 100 ||  || 100\n").to_stdout
    end
  end

  describe 'Making a deposit, a withdrawa, and printing a new statement' do

  end
end
