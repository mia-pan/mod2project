class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.datetime :pulished_date
      t.integer :product_id
      t.string :comment

      t.timestamps
    end
  end
end
