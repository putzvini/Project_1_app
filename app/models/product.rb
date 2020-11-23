class Product < ApplicationRecord
  has_many :users
  validates :name, :price, :category, presence: true
end
