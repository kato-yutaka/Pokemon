class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :pokebuild_id
      t.string :pokedex_id
      t.integer :per_id
      t.integer :cha_id
      t.integer :wepon_id

      t.timestamps null: false
    end
  end
end
