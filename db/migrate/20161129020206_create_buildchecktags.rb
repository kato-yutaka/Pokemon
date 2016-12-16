class CreateBuildchecktags < ActiveRecord::Migration
  def change
    create_table :buildchecktags do |t|
      t.integer :pokebuild_id
      t.integer :buildtag_id

      t.timestamps null: false
    end
  end
end
