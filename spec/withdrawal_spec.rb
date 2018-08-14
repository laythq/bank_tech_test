require 'withdrawal'

describe Deposit do

describe 'Initialization' do
  it 'each Withdrawal object is initialized with a date and an amount' do
    withdrawal = Withdrawal.new(100, 0, "1/1/2000")
    expect(withdrawal.debit).to eq(100)
    expect(withdrawal.date).to eq("1/1/2000")
  end
end
end
