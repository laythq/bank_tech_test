require 'view'

describe View do
  before(:each) do
    @view = View.new
  end
  
  describe '#show_options' do
    it 'should print a list of options to the console' do
      expect { @view.show_options }.to output("1. Bank Statement\n2. Deposit\n3. Withdrawal\n4. Exit\n").to_stdout
    end
  end
end
