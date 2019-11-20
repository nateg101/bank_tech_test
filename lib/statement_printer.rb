require_relative 'account'

class StatementPrinter

  def initialize
    @account = Account.new
  end

  def display
    "#{header}" + "#{deposit_list}"
  end

  def header
    "date || credit || debit || balance\n"
  end

  def deposit_list
    @account.deposits each do |dep|
      deposit_date = dep[0]
      deposit_amount = dep[1]
      deposit_balance = dep[2]
      puts "#{deposit_date} || #{deposit_amount} ||  || #{deposit_balance}\n"
    end
  end
end
