class RemoveUserIdFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :posts, :user_id, null: false, foreign_key: true
  end
end
