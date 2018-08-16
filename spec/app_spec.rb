require 'app'

describe App do
  before(:each) do
    allow(STDIN).to receive(:gets).and_return('100')
  end

  let(:app) { App.new(mock_bank) }
  let(:mock_bank) { double :bank,
                    deposit: 'Deposited',
                    withdraw: 'Withdrawn',
                    show_statement: 'Statement'}

  describe '#deposit' do
    it 'should call Bank#deposit' do
      expect(app.deposit).to eq('Deposited')
    end
  end

  describe '#withdraw' do
    it 'should call Bank#withdraw' do
      expect(app.withdraw).to eq('Withdrawn')
    end
  end

  describe '#command' do
    it 'should take stdin from the user or a StringIO object for tests' do
      user_input = StringIO.new('test')
      input_received = app.command(user_input)
      expect(input_received).to eq('Please select a valid option')
    end

    it 'if the user selects Show Balance, Bank#show_statement is called' do
      user_input = StringIO.new('1')
      expect(app.command(user_input)).to eq('Statement')
    end

    it 'if the user selects Deposit, the #deposit method is called' do
      expect( app ).to receive(:deposit)
      user_input = StringIO.new('2')
      app.command(user_input)
    end

    it 'if the user selects Withdraw, the #withdraw method is called' do
      expect( app ).to receive(:withdraw)
      user_input = StringIO.new('3')
      app.command(user_input)
    end
  end
end
