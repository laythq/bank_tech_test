class Deposit

  attr_reader :date, :amount

  def initialize(amount, date = Time.now.strftime("%d/%m/%Y"))
    @amount = amount
    @date = date
  end

end
