class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.binary :file

      t.timestamps null: false
    end
  end
end
