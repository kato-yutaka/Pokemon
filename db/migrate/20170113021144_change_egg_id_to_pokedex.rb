class ChangeEggIdToPokedex < ActiveRecord::Migration
  def change
#変更後の型
  def up
    change_column :Pokedexes, :egg_id, :integer
  end

  #変更前の型
  def down
    change_column :Pokedexes, :egg_id, :string
  end
  end
end
