class Transaction < ActiveRecord::Base

  self.inheritance_column = "inheritance_type"

  def total
    self.count
  end

  def self.withdraw
    self.all.select {|t| t.transaction_type == "Withdraw Money"}
  end

  def self.deposits
    self.all.select {|t| t.transaction_type == "Deposit Money"}
  end

  def self.most_spent
    withdraw.map{|t| t.amount}.sort.last
  end

end
