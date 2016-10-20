class CreateWepons < ActiveRecord::Migration
  def change
    create_table :wepons do |t|
      t.string :name
      t.text :eff

      t.timestamps null: false
    end
  end
end
