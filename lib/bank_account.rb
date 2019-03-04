class BankAccount
  attr_reader :name, :balance, :status
  def initialize name
    @name = name
    @balance = 1000
    @status = "open"
  end

  def balance
    @bank_account
  end

  def deposit amount
    @bank_account += amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    @status && balance
  end

  def close_account
    @status = "closed"
  end
end
