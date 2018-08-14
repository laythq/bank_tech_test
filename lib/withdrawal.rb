class Withdrawal

    attr_reader :debit, :date, :credit

  def initialize(amount, balance, date = Time.now.strftime("%d/%m/%Y"))
    @debit = amount
    @balance = balance
    @credit = nil
    @date = date
  end
end
