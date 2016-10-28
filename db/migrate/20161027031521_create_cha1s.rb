class CreateCha1s < ActiveRecord::Migration
  def change
    create_table :cha1s do |t|
      t.integer :cha_id

      t.timestamps null: false
    end
  end
end
