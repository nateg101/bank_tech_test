require 'account'

describe Account do

  subject(:account) { described_class.new }

  # let(:transaction) { double(:transaction, new: transaction) }
  # let(:transaction_class) { double(:transaction_class, new: transaction) }

  describe '#deposit' do
    it 'should update the balance correctly' do
      account.deposit(500, '18/11/19')
      expect(account.balance).to eq 500
    end

    it 'raises an error message if trying to make a deposit >= 0' do
      expect(account.deposit(-10, '18/11/19')).to eq 'Your deposit must be more than 0.'
    end
  end

  describe '#withdrawal' do
    it 'should update the balance correctly' do
      account.deposit(500, "18/11/2019", transaction)
      account.withdrawal(100, "19/11/2019")
      expect(account.balance).to eq 400
    end

    it 'can store the date of the withdrawal' do
      account.deposit(500, "18/11/2019")
      account.withdrawal(100, "19/11/2019")
      expect(account.withdrawals).to eq [["19/11/2019", 100, 400]]
    end

    it 'raises an error if you withdraw more than the balance' do
      account.deposit(500, "18/11/2019")
      expect(account.withdrawal(600, '19/11/19')).to eq 'Insufficient funds.'
    end

    it 'raises an error if withdrawal is not positive integer' do
      account.deposit(500, "18/11/2019")
      expect(account.withdrawal(-100, "19/11/2019")).to eq 'Please enter an amount greater than 0.'
    end
  end
end
