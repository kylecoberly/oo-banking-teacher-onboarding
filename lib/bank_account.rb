class BankAccount
  attr_reader :name, :status
  attr_accessor :balance
  def initialize name
    @name = name
    @balance = 1000
    @status = "open"
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
