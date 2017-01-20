class ChangeEggIdTypeInPokedex < ActiveRecord::Migration
  def change
   change_column :pokedexes, :egg_id, :integer
  end
end
