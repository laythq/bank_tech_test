require 'deposit'

describe Deposit do

describe 'Initialization' do
  it 'each Deposit object is initialized with a date and an amount' do
    deposit = Deposit.new(100)
    expect(deposit.amount).to eq(100)
  end
end
end