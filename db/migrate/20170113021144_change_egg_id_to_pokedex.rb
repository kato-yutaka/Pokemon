class ChangeEggIdToPokedex < ActiveRecord::Migration
  def change
#�ύX��̌^
  def up
    change_column :Pokedexes, :egg_id, :integer
  end

  #�ύX�O�̌^
  def down
    change_column :Pokedexes, :egg_id, :string
  end
  end
end
