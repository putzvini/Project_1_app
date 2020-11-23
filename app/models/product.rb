class Product < ApplicationRecord
  belongs_to :users
  validates :name, :price, :category, presence: true
end
