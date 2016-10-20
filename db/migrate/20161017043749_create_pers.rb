class CreatePers < ActiveRecord::Migration
  def change
    create_table :pers do |t|
      t.string :name
      t.string :up
      t.string :down

      t.timestamps null: false
    end
  end
end
