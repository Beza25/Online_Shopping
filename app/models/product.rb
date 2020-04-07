class Product < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :customers, through: :orders
end
