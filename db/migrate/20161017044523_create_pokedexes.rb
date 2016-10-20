class CreatePokedexes < ActiveRecord::Migration
  def change
    create_table :pokedexes do |t|
      t.string :name
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :satk
      t.integer :sdef
      t.integer :spd
      t.text :eco
      t.integer :egg_id
      t.integer :type_id
      t.string :pic
      t.binary :pic_data

      t.timestamps null: false
    end
  end
end
