class AddIndexToEverything < ActiveRecord::Migration
  def change
    add_index :comments, :post_id
    add_index :replies, :comment_id
  end
end
