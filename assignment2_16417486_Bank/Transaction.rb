require_relative 'Account.rb'

class Transaction
  def initialize(id, amount)
    if(amount!=0)
     @amount = amount
      @id = id
    else
      puts "enter an amount that is not zero"

    end
  end

  def get_amount
    return @amount
  end

  def get_id
    return @id
  end
end