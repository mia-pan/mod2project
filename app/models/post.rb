class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :product
    has_many :categories_posts
    has_many :categories, through: :categories_posts
    # def category_name=(name)
    #     self.category = Category.find_or_create_by(name: name)
    #   end
    
    #   def category_name
    #      self.category ? self.category.name : nil
    # end

    # def total_likes
		
	# 	post_map = posts.map do |post|
	# 		post.likes
	# 	end
	# 	post_map.sum
    # end
    
    # def featured_post
	# 	self.posts.max_by do |post|
	# 		post.likes
	# 	end
	# end

end
