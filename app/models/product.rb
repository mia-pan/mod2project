class Product < ApplicationRecord
    has_many :posts 
    has_many :users, through: :posts 
    belongs_to :brand 
    belongs_to :category 

end
