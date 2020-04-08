class Customer < ApplicationRecord
    has_many :orders,  dependent: :destroy
    has_many :products, through: :orders 
    validates :name, presence: true, uniqueness: {case_sensetive: false}


end
