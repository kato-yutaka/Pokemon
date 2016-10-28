class AddCha1ToPokedexes < ActiveRecord::Migration
  def change
    add_column :pokedexes, :cha1, :integer
    add_column :pokedexes, :cha2, :integer
    add_column :pokedexes, :cha3, :integer
  end
end
