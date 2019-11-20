require 'transaction'

describe Transaction do

  describe '#deposit' do
    it 'will have credit 500 and balance of 500 and no debit' do
      transaction = Transaction.new(deposit: 500, withdrawal: 0, current_balance: 0, date: "20/11/19")
      expect(transaction.transaction_deposit).to eq 500
      expect(transaction.transaction_withdrawal).to eq 0
    end
  end
end
