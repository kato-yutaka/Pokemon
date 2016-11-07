class CreateRaischecktags < ActiveRecord::Migration
  def change
    create_table :raischecktags do |t|
      t.integer :pokerai_id
      t.integer :raistag_id

      t.timestamps null: false
    end
  end
end
