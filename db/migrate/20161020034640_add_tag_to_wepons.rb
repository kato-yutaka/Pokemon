class AddTagToWepons < ActiveRecord::Migration
  def change
    add_column :wepons, :get, :text
  end
end
