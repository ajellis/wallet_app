class Transaction < ActiveRecord::Base

  self.inheritance_column = "inheritance_type"

  def total
    self.count
  end
end
