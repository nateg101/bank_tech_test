
class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance = money + balance
  end

end