class Shop < ActiveRecord::Base
  has_many :products
  has_many :catalog_shops
  validates :name, presence: true, length: {minimum: 3}
end
