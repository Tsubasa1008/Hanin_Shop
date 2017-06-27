class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :barcode, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  validates :qty, presence: true, numericality: { only_integer: true }
end