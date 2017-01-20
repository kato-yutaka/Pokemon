class ChangeEggIdToPokedex < ActiveRecord::Migration
  def change
#•ÏXŒã‚ÌŒ^
  def up
    change_column :Pokedexes, :egg_id, :integer
  end

  #•ÏX‘O‚ÌŒ^
  def down
    change_column :Pokedexes, :egg_id, :string
  end
  end
end
