class Account
  def initialize(id)
    @id =id
    @balance =0
  end

  def deposit(amount)
    @balance = @balance+amount
  end

  def withdraw(amount)
    @balance = @balance-amount
  end

  def to_s
    puts "Account: #{@id} has a balance of #{@balance.round(2)}"
  end

end
