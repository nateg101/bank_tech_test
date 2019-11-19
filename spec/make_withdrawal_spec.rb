require 'account'

describe 'making a withdrawal' do
  it 'should update the balance correctly' do
    account = Account.new
    account.deposit(500, "18/11/2019")
    account.withdrawal(100)
    expect(account.balance).to eq 400
  end

  
end
