class CreateCha3s < ActiveRecord::Migration
  def change
    create_table :cha3s do |t|
      t.integer :cha_id

      t.timestamps null: false
    end
  end
end
