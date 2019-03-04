class Transfer
  attr_reader :pending, :amount
  attr_accessor :status, :sender, :receiver

  def initialize sender, receiver, amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status = "complete"
      @old_receiver = @receiver.clone
      @receiver = @sender
      @sender = @old_receiver
      @status = "pending"
      execute_transaction
    end
  end
end
