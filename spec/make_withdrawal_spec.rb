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
    expect(account.transactions).to include [100, "19/11/2019"]
  end

end
