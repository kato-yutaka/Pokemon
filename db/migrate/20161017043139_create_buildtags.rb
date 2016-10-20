class CreateBuildtags < ActiveRecord::Migration
  def change
    create_table :buildtags do |t|
      t.string :name
      t.integer :pokebuild_id

      t.timestamps null: false
    end
  end
end
