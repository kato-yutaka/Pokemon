class CreateComs < ActiveRecord::Migration
  def change
    create_table :coms do |t|
      t.string :name
      t.date :date
      t.text :com
      t.integer :pokerai_id
      t.integer :pokebuild_id

      t.timestamps null: false
    end
  end
end
