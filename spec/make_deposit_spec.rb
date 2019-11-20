# frozen_string_literal: true

require 'account'

describe ' making a deposit' do
  it 'should update the balance correctly' do
    account = Account.new
    account.deposit(500, '18/11/19')
    expect(account.balance).to eq 500
  end

  it 'can store a date when a deposit is made' do
    account = Account.new
    account.deposit(500, '18/11/19')
    expect(account.transactions).to eq [{ :deposit => ['18/11/19', 500, 500] }]
  end

  it 'raises an error message if trying to make a deposit >= 0' do
    account = Account.new
    expect(account.deposit(-10, '18/11/19')).to eq 'Your deposit must be more than 0.'
  end
end
