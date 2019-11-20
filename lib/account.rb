# frozen_string_literal: true
require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(money, date, transaction = Transaction)
    return 'Your deposit must be more than 0.' unless money > 0

    @balance += money
    @transactions.insert(
      0, transaction.new(deposit: money, current_balance: @balance, date: date)
      )
  end

  def withdrawal(money, date, transaction = Transaction)
    return 'Insufficient funds.' unless money <= @balance
    return 'Please enter an amount greater than 0.' unless money.positive?

    @balance -= money
    @transactions.insert(
      0, transaction.new(withdrawal: money, current_balance: @balance, date: date)
      )
  end
end
