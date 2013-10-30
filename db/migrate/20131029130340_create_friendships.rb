class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :sender_id
      t.integer :friend_id

      t.timestamps
    end
    add_index :friendships, :sender_id
    add_index :friendships, :friend_id
    add_index :friendships, [:sender_id, :friend_id], unique: true
  end
end
