class Transaction < ActiveRecord::Base

  def self.total
  end


  def self.total_transactions
    self.count
  end

  def self.number_of_withdraws
    self.all.select {|t| t.transaction_type == "Withdraw"}
  end

  def self.umber_of_deposits
    self.all.select {|t| t.transaction_type == "Deposit"}
  end

  def most_spent
    withdraw.map{|t| t.amount}.sort.last
  end

end
