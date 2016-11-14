class AddAdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ad, :boolean
  end
end
