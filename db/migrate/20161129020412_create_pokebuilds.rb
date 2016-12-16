class CreatePokebuilds < ActiveRecord::Migration
  def change
    create_table :pokebuilds do |t|
      t.integer :user_id
      t.string :title
      t.integer :buildchecktag_id
      t.text :ex

      t.timestamps null: false
    end
  end
end
