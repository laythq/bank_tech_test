require 'statement'

describe Statement do
  before(:each) do
    @statement = Statement.new
  end


describe '#bank_statement' do
  it 'returns account details' do
    expect { @statement.bank_statement }.to output("date || credit || debit || balance\n#{Time.now.strftime("%d/%m/%Y")} || || #{@statement.balance}\n").to_stdout
  end
end
end
