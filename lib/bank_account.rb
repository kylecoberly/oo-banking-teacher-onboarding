class BankAccount
  attr_reader :name, :bank_account, :status
  def initialize name
    @name = name
    @bank_account = 1000
    @status = "open"
  end
end
