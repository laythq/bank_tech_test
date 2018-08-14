require 'statement'

describe Statement do
  before(:each) do

    deposit1 = double("Deposit", credit: 10, debit: nil, date: "1/1/2000")
    deposit2 = double("Deposit", credit: 20, debit: nil, date: "2/1/2000")
    activity = []
    activity.push(deposit1, deposit2)
    @statement = Statement.new(30, activity)

  end


describe '#bank_statement' do
  it 'shows the balance at time of each transaction' do
    expect { @statement.bank_statement }. to output("date || credit || debit || balance\n").to_stdout
  end
end
end
