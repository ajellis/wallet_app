class Transaction < ActiveRecord::Base

  self.inheritance_column = "inheritance_type"

  def self.total_transactions
    self.count
  end

  def self.number_of_withdraws
    self.all.select {|t| t.transaction_type == "Withdraw Money"}
  end

  def self.number_of_deposits
    self.all.select {|t| t.transaction_type == "Deposit Money"}
  end

  def self.most_spent
    withdraw.map{|t| t.amount}.sort.last
  end

end
