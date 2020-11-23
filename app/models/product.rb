class Product < ApplicationRecord
  has_many :users
  validates :name, :price, :categoty, presence: true
end
