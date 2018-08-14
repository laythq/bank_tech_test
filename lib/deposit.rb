class Deposit

  attr_reader :date, :credit, :debit

  def initialize(amount, balance, date = Time.now.strftime("%d/%m/%Y"))
    @credit = amount
    @balance = balance
    @debit = nil
    @date = date
  end

end
