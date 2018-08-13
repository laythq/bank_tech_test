require 'bank'

describe Bank do
  describe '#show_options' do
    it 'should print a list of options to the console' do
      expect { subject.show_options }.to output("1. Show Balance\n2. Deposit\n3. Withdrawal\n4. Exit\n").to_stdout
    end
  end
end
