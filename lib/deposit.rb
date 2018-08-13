class Deposit

  attr_reader :date, :credit

  def initialize(amount, date = Time.now.strftime("%d/%m/%Y"))
    @credit = amount
    @date = date
  end

end
