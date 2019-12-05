class Product < ApplicationRecord
    has_many :posts 
    has_many :reviews  
    belongs_to :category 

end
