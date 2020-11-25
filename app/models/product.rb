class Product < ApplicationRecord
  belongs_to :user
  validates :name, :price, :category, presence: true
  has_one_attached :photo
end
