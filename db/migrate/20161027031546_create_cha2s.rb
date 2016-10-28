class CreateCha2s < ActiveRecord::Migration
  def change
    create_table :cha2s do |t|
      t.integer :cha_id

      t.timestamps null: false
    end
  end
end
