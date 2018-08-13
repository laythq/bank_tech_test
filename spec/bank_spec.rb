require 'bank'

describe Bank do
  it 'should print a list of options to the console' do
    expect { show_options }.to output("1. Show Balance 2. Deposit 3. Withdraw").to_stdout
  end
end
