# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(money, date)
    return 'Your deposit must be more than 0.' unless money.positive?

    @balance += money
    @transactions << [money, date]
  end

  def withdrawal(money, date)
    return 'Insufficient funds.' unless money <= @balance

    @balance -= money
    @transactions << [money, date]

  end
end
