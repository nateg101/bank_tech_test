
class Transaction
  attr_reader :transaction_deposit, :transaction_withdrawal, :current_balance, :date

  def initialize(deposit:, withdrawal:, current_balance:, date:)
   @current_balance = current_balance
   @date = date
   @transaction_deposit = deposit
   @transaction_withdrawal = withdrawal
  end
end
