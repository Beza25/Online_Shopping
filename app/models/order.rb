class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :product
    validates :product, presence: true
    validates :customer, presence: true
    validates :quantity, presence: true
    validates :date, presence: true
    validate :date_validation
   
    
    def date_validation
        if self.date 
            if  self.date.year <= 2000 || self.date.year >= DateTime.now.year
                errors.add(:date, "Date Must be between 2000 and #{DateTime.now.year}")
            end
        end
    end
    
end
