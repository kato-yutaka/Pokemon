class CreateBuildskills < ActiveRecord::Migration
  def change
    create_table :buildskills do |t|
      t.integer :party_id
      t.string :name
      t.integer :power
      t.string :eff
			t.integer :skillname_id
      t.timestamps null: false
    end
  end
end
