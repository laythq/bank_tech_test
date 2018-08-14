require 'bank'

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  describe 'Showing bank statement: ' do
    it 'should print a statement to the page' do
      expect { @bank.show_statement }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe 'Making a deposit and printing new statement' do

  end

  describe 'Making a deposit, a withdrawa, and printing a new statement' do

  end
end
