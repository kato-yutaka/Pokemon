class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :pokerai_id
      t.integer :party_id
      t.string :name
      t.integer :power
      t.string :eff

      t.timestamps null: false
    end
  end
end
