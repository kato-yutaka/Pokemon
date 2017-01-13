class AddUserIdToComs < ActiveRecord::Migration
  def change
    add_column :coms, :user_id, :integer
  end
end
