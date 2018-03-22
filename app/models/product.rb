class Product < ApplicationRecord
  belongs_to :users
  has_many :orders
  has_many :category_product


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  def as_json
    {
      name: name,
      price: price,
      image_url: image_url,
      description: description,
      supplier_id: supplier_id
    }
  end

#   def is_discounted
#     price < 2
#   end

#   def tax
#     price * 0.09
#   end

#   def total
#     item + sales_tax
#   end

end
