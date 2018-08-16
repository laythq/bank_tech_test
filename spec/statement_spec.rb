require 'statement'

describe Statement do
  before(:each) do
    deposit1 = double('Transaction', credit: 10, debit: nil, balance: 10, date: Time.now)
    deposit2 = double('Transaction', credit: 20, debit: nil, balance: 30, date: Time.now)
    activity = []
    activity.push(deposit1, deposit2)
    @statement = Statement.new(activity)
  end

  describe '#bank_statement' do
    it 'shows the date, balanace and sum of each transaction' do
      expect { @statement.bank_statement }. to output("date || credit || debit || balance\n#{Time.now.strftime('%d/%m %H:%M')} || 20 ||  || 30\n#{Time.now.strftime('%d/%m %H:%M')} || 10 ||  || 10\n").to_stdout
    end
  end
end
