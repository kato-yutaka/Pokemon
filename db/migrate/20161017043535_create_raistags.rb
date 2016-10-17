class CreateRaistags < ActiveRecord::Migration
  def change
    create_table :raistags do |t|
      t.string :name
      t.integer :pokerais_id

      t.timestamps null: false
    end
  end
end
