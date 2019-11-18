require 'account'

describe " making a deposit" do
  it "should update the balance correctly" do
    account = Account.new
    account.deposit(500, "18/11/19")
    expect(account.balance).to eq 500
  end

  it "can store a date when a deposit is made" do
    account = Account.new
    account.deposit(500, "18/11/19")
    expect(account.transactions).to eq [[500, "18/11/19"]]
  end
end
