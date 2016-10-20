class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
