class BankAccount
  # code here

  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end


  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your Balance is $#{self.balance}."
  end

  def close_account
    self.status = "closed"
  end

  def valid?
    balance > 0 && status == "open"
  end

end
