class ChangeCha3ToPokedex < ActiveRecord::Migration
  def change
  change_column :pokedexes, :egg_id, :string
  end
end
