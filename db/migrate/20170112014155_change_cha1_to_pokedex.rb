class ChangeCha1ToPokedex < ActiveRecord::Migration
  def change
  change_column :pokedexes, :cha1, :string
  end
end
