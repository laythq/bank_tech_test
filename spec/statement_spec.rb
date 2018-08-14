require 'statement'

describe Statement do
  before(:each) do
    deposit1 = double('Transaction', credit: 10, debit: nil, balance: 10, date: '1/1/2000')
    deposit2 = double('Transaction', credit: 20, debit: nil, balance: 30, date: '2/1/2000')
    activity = []
    activity.push(deposit1, deposit2)
    @statement = Statement.new(activity)

  end


describe '#bank_statement' do
  it 'shows the balance at time of each transaction' do
    expect { @statement.bank_statement }. to output("date || credit || debit || balance\n2/1/2000 || 20 ||  || 30\n1/1/2000 || 10 ||  || 10\n").to_stdout
  end
end
end
