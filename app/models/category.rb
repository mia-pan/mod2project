class Category < ApplicationRecord
    has_many :products 
    has_many :posts
    belongs_to :post
end
