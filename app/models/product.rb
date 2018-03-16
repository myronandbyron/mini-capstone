class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }

  def as_json
    {
      name: name,
      price: price,
      item_url: item_url,
      description: description,
      is_discounted: is_discounted?,
      tax: tax,
      total: total 
    }
  end

  def is_discounted
    price < 2
  end

  def tax
    price * 0.09
  end

  def total
    item + sales_tax
  end

end
