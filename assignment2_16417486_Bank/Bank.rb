require_relative 'Account.rb'
require_relative 'Teller.rb'
require_relative 'Transaction.rb'

class Bank

  def initialize
  @h = Hash.new
    @tellers = []
    @num_of_tellers =0
  end

  def add_account(id)
  @h[id]= Account.new(id)
  end

  def add_teller(name,bank,time)
    @tellers[@num_of_tellers]= Teller.new(name,bank,time)
    @num_of_tellers+=1
  end

  def use_teller(name,id,amount)
    i = 0
    while i<@num_of_tellers
      if name == @tellers[i].get_name
        @tellers[i].process_transaction(Transaction.new(id,amount))
      end
      i+=1
    end
  end

  def deposit(id,amount)
  @h[id.to_i].deposit(amount)
  end

  def withdraw(id,amount)
    @h[id].withdraw(amount)
  end

  def see_accounts
    puts @h
  end

  def min_teller
   index=0
   i=1
   j=0
    while i <3
      if @tellers[j].get_total_time>@tellers[i].get_total_time
        index = i
        j+=1
        i+=1
        else
          i+=1
      end
    end
    return index
  end

  def teller_to_s
    @tellers[0].to_s
    @tellers[1].to_s
    @tellers[2].to_s

  end

  def to_s(id)
   @h[id].to_s
  end

end

b =Bank.new
arr = Array.new()
f = File.open("accounts.txt", "r")
  f.each_line do |line|
  b.add_account(line.to_i)
    arr.push(line.to_i)
    end
 f.close

x = Array.new(100) {Array.new(2)}

b.add_teller("Jack",b,1)
 b.add_teller("Emma",b,2)
 b.add_teller("Paul",b,3)

i=0
g =File.open("transactions (1).txt", "r")
  g.each_line do |line|
    var = line.split(" ")
    x[i][0] = var[0].to_i
    x[i][1] = var[1].to_f
    i+=1
end
g.close


def process_transactions_randomly(bank,x)
  names =["Jack","Emma","Paul"]

  bank.use_teller(names[Random.rand(3)],x[0][0].to_i,x[0][1])
bank.use_teller(names[Random.rand(3)],x[1][0].to_i,x[1][1])
bank.use_teller(names[Random.rand(3)],x[2][0].to_i,x[2][1])
bank.use_teller(names[Random.rand(3)],x[3][0].to_i,x[3][1])
bank.use_teller(names[Random.rand(3)],x[4][0].to_i,x[4][1])
bank.use_teller(names[Random.rand(3)],x[5][0].to_i,x[5][1])
bank.use_teller(names[Random.rand(3)],x[6][0].to_i,x[6][1])
bank.use_teller(names[Random.rand(3)],x[7][0].to_i,x[7][1])
bank.use_teller(names[Random.rand(3)],x[8][0].to_i,x[8][1])
bank.use_teller(names[Random.rand(3)],x[9][0].to_i,x[9][1])
bank.use_teller(names[Random.rand(3)],x[10][0].to_i,x[10][1])
bank.use_teller(names[Random.rand(3)],x[11][0].to_i,x[11][1])
bank.use_teller(names[Random.rand(3)],x[12][0].to_i,x[12][1])
bank.use_teller(names[Random.rand(3)],x[13][0].to_i,x[13][1])
bank.use_teller(names[Random.rand(3)],x[14][0].to_i,x[14][1])
bank.use_teller(names[Random.rand(3)],x[15][0].to_i,x[15][1])
bank.use_teller(names[Random.rand(3)],x[16][0].to_i,x[16][1])
bank.use_teller(names[Random.rand(3)],x[17][0].to_i,x[17][1])
bank.use_teller(names[Random.rand(3)],x[18][0].to_i,x[18][1])
bank.use_teller(names[Random.rand(3)],x[19][0].to_i,x[19][1])
bank.use_teller(names[Random.rand(3)],x[20][0].to_i,x[20][1])
bank.use_teller(names[Random.rand(3)],x[21][0].to_i,x[21][1])
bank.use_teller(names[Random.rand(3)],x[22][0].to_i,x[22][1])
bank.use_teller(names[Random.rand(3)],x[23][0].to_i,x[23][1])
bank.use_teller(names[Random.rand(3)],x[24][0].to_i,x[24][1])
bank.use_teller(names[Random.rand(3)],x[25][0].to_i,x[25][1])
bank.use_teller(names[Random.rand(3)],x[26][0].to_i,x[26][1])
bank.use_teller(names[Random.rand(3)],x[27][0].to_i,x[27][1])
bank.use_teller(names[Random.rand(3)],x[28][0].to_i,x[28][1])
bank.use_teller(names[Random.rand(3)],x[29][0].to_i,x[29][1])
end

def process_transactions_smartly(bank,x)
  names =["Jack","Emma","Paul"]

  bank.use_teller(names[bank.min_teller],x[0][0].to_i,x[0][1])                        #min_teller gives the index of the teller who has used the least time so far
  bank.use_teller(names[bank.min_teller],x[1][0].to_i,x[1][1])
  bank.use_teller(names[bank.min_teller],x[2][0].to_i,x[2][1])
  bank.use_teller(names[bank.min_teller],x[3][0].to_i,x[3][1])
  bank.use_teller(names[bank.min_teller],x[4][0].to_i,x[4][1])
  bank.use_teller(names[bank.min_teller],x[5][0].to_i,x[5][1])
  bank.use_teller(names[bank.min_teller],x[6][0].to_i,x[6][1])
  bank.use_teller(names[bank.min_teller],x[7][0].to_i,x[7][1])
  bank.use_teller(names[bank.min_teller],x[8][0].to_i,x[8][1])
  bank.use_teller(names[bank.min_teller],x[9][0].to_i,x[9][1])
  bank.use_teller(names[bank.min_teller],x[10][0].to_i,x[10][1])
  bank.use_teller(names[bank.min_teller],x[11][0].to_i,x[11][1])
  bank.use_teller(names[bank.min_teller],x[12][0].to_i,x[12][1])
  bank.use_teller(names[bank.min_teller],x[13][0].to_i,x[13][1])
  bank.use_teller(names[bank.min_teller],x[14][0].to_i,x[14][1])
  bank.use_teller(names[bank.min_teller],x[15][0].to_i,x[15][1])
  bank.use_teller(names[bank.min_teller],x[16][0].to_i,x[16][1])
  bank.use_teller(names[bank.min_teller],x[17][0].to_i,x[17][1])
  bank.use_teller(names[bank.min_teller],x[18][0].to_i,x[18][1])
  bank.use_teller(names[bank.min_teller],x[19][0].to_i,x[19][1])
  bank.use_teller(names[bank.min_teller],x[20][0].to_i,x[20][1])
  bank.use_teller(names[bank.min_teller],x[21][0].to_i,x[21][1])
  bank.use_teller(names[bank.min_teller],x[22][0].to_i,x[22][1])
  bank.use_teller(names[bank.min_teller],x[23][0].to_i,x[23][1])
  bank.use_teller(names[bank.min_teller],x[24][0].to_i,x[24][1])
  bank.use_teller(names[bank.min_teller],x[25][0].to_i,x[25][1])
  bank.use_teller(names[bank.min_teller],x[26][0].to_i,x[26][1])
  bank.use_teller(names[bank.min_teller],x[27][0].to_i,x[27][1])
  bank.use_teller(names[bank.min_teller],x[28][0].to_i,x[28][1])
  bank.use_teller(names[bank.min_teller],x[29][0].to_i,x[29][1])
end

process_transactions_randomly(b,x)                  #process smartly and randomly are here to test
#process_transactions_smartly(b,x)
#
k=0
while k<10 do
b.to_s(arr[k])
k+=1
end
b.teller_to_s