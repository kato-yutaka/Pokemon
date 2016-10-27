class AddImageToPokedex < ActiveRecord::Migration
  def change
    add_column :pokedexes, :image, :string
  end
end
