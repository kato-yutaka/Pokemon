class ChangeCha2ToPokedex < ActiveRecord::Migration
  def change
  change_column :pokedexes, :cha2, :string
  end
end
