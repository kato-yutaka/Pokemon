class RenameNameToPokerai < ActiveRecord::Migration
  def change
rename_column :pokerais, :name, :user_id
  end
end
