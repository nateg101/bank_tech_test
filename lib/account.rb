
class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(money, date)
    @balance = money + balance
    @transactions << [money, date]
  end

end
