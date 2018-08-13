require 'deposit'

describe Deposit do
  before(:each) do
    @deposit = Deposit.new
  end

describe 'Initialization' do
  it 'each Deposit object is initialized with a date and an amount' do
    deposit = subject.new(1/1/2000, 100)
    expect(@deposit.date).to eq(1/1/2000)
    expect(@deposit.amount).to eq(100)
  end
end
end
