class Deposit

  attr_reader :date, :credit, :debit

  def initialize(amount, date = Time.now.strftime("%d/%m/%Y"))
    @credit = amount
    @debit = nil
    @date = date
  end

end
