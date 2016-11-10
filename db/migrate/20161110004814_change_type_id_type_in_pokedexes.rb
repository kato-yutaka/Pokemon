class ChangeTypeIdTypeInPokedexes < ActiveRecord::Migration
  def change
change_column :pokedexes, :cha1, :string
  end
end
