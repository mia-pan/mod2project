class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      
      t.string :review
      t.integer :likes
      t.datetime :post_datetime
      t.integer :user_id
      t.integer :product_id
      

      t.timestamps
    end
  end
end
