require 'account'

describe 'making a withdrawal' do

  it 'should update the balance correctly' do
    account = Account.new
    account.deposit(500, "18/11/2019")
    account.withdrawal(100, "19/11/2019")
    expect(account.balance).to eq 400
  end

  it 'can store the date of the withdrawal' do
    account = Account.new
    account.deposit(500, "18/11/2019")
    account.withdrawal(100, "19/11/2019")
    expect(account.transactions).to eq [{ :deposit => ["18/11/2019", 500, 500] }, { :withdrawal => ["19/11/2019", 100, 400] }]
  end

  it 'raises an error if you withdraw more than the balance' do
    account = Account.new
    account.deposit(500, "18/11/2019")
    expect(account.withdrawal(600, '19/11/19')).to eq 'Insufficient funds.'
  end

  it 'raises an error if withdrawal is not positive integer' do
    account = Account.new
    account.deposit(500, "18/11/2019")
    expect(account.withdrawal(-100, "19/11/2019")).to eq 'Please enter an amount greater than 0.'
  end

end
