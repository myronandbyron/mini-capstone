class User < ApplicationRecord
  has_secure_password
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
