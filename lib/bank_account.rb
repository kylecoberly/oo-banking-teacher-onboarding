class BankAccount
  attr_reader :name, :bank_account, :status
  def initialize name
    @name = name
    @bank_account = 1000
    @status = "open"
  end

  def balance
    @bank_account
  end

  def deposit amount
    @bank_account += amount
  end

  def display_balance
    "You balance is $#{balance}."
  end
end
