class ChangeContentTypeInParties < ActiveRecord::Migration
  def change
		change_column :parties, :pokedex_id, :integer
  end
end
