class AddPicDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pic_data, :binary
  end
end
