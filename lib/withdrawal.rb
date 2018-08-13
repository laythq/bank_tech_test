class Withdrawal

    attr_reader :debit, :date, :credit

  def initialize(amount, date = Time.now.strftime("%d/%m/%Y"))
    @debit = amount
    @credit = nil
    @date = date
  end
end
