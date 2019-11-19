# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(money, date)
    return 'Your deposit must be more than 0' unless money.positive?

    @balance = money + balance
    @transactions << [money, date]
  end
end
