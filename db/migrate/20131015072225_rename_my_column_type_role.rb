class RenameMyColumnTypeRole < ActiveRecord::Migration
  def change
  	def change
  		
    rename_column :users, :type, :role

  end
  end
end
