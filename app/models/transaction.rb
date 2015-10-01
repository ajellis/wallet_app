class Transaction < ActiveRecord::Base

  def total
    self.count
  end
end
