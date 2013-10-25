class AddDancingToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :dancing, :boolean
  	add_column :users, :singing, :boolean
  	add_column :users, :reading, :boolean
  	remove_column :users, :member_id
  end
end
