class Transaction

  attr_reader :date, :credit, :debit, :balance

  def initialize(credit, debit, balance, date = Time.now)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = date
  end
end
