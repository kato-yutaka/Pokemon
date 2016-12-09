class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :pokebuild_id
      t.string :pokedex_id
      t.integer :per_id
      t.integer :cha_id
      t.integer :wepon_id
			t.integer :hp
			t.integer :atk
			t.integer :def
			t.integer :satk
			t.integer :sdef
			t.integer :spd
      t.timestamps null: false
    end
  end
end
