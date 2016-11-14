class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pic
      t.binary :pic_data
      t.string :password
      t.string :email
      t.text :info
      t.string :profile
      t.boolean :ad
      t.timestamps null: false
    end
  end
end
