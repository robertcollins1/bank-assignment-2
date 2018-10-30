require_relative 'Account.rb'
require_relative 'Transaction.rb'
class Teller
  def initialize(name,bank,time)
    @bank = bank
    @name = name
    @time =time
    @num_of_transaction=0
  end
  def process_transaction(transaction)
if transaction.get_amount.to_f> 0
  a = transaction.get_id
  b = transaction.get_amount.to_f
  @bank.deposit(a,b)
  @num_of_transaction+=1
end

if transaction.get_amount<0
  @bank.withdraw(transaction.get_id,(transaction.get_amount.to_f*-1))
  @num_of_transaction+=1
end

  end

  def get_num_transaction
    return @num_of_transaction
  end

  def get_name
    return @name
  end

  def get_time_per_transaction
    return @time
  end

  def get_total_time
   return @num_of_transaction*@time
  end

  def to_s
    puts "Teller #{@name} completed #{@num_of_transaction} transactions in #{get_total_time} minutes"
  end
end