class CreateChas < ActiveRecord::Migration
  def change
    create_table :chas do |t|
      t.string :kubun
      t.integer :pokedex_id
      t.string :name
      t.text :ex

      t.timestamps null: false
    end
  end
end
