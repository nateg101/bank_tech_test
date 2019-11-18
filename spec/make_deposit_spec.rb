require 'account'

describe " making a deposit" do
  it "should update the balance correctly" do
    account = Account.new
    account.deposit(500)
    expect(account.balance).to eq 500
  end
end
