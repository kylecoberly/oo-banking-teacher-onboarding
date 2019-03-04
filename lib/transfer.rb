class Transfer
  attr_reader :sender, :receiver, :pending, :amount
  def initialize sender, receiver, amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end
end
