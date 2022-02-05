class Cart < ApplicationRecord
  belongs_to :user
  has_many :products ,dependent: :delete_all
  has_many :list_items ,dependent: :delete_all
  has_many :products ,through: :list_items,dependent: :delete_all

  def sub_total
    sum=0
    self.list_items.each do |i|
      sum+= i.total_price
    end
    return sum
  end
  def sub_total1
    sum=[]
    j=1
    k=0
    self.list_items.each do |i|
      while(k<j)
        sum[k]= i.total_price
        k+=1
      end
      j+=1
    end
    return sum
  end
end
