require 'transaction'

describe Transaction do

describe 'Initialization' do
  it 'each Transaction object is initialized with a debit/credit sum, a balance at time of transaction, and a date' do
    transaction = Transaction.new(100, 0, 0, "1/1/2000")
    expect(transaction.credit).to eq(100)
    expect(transaction.date).to eq("1/1/2000")
  end
end
end
