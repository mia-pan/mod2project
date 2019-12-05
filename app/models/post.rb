class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :product
    belongs_to :category
    has_many :categories
    # def category_name=(name)
    #     self.category = Category.find_or_create_by(name: name)
    #   end
    
    #   def category_name
    #      self.category ? self.category.name : nil
    # end

    def total_likes
		all_posts = self.posts
		post_map = all_posts.map do |post|
			post.likes
		end
		post_map.sum
    end
    
    def featured_post
		self.posts.max_by do |post|
			post.likes
		end
	end

end
