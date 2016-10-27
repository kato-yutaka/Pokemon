class CreateSkillnames < ActiveRecord::Migration
  def change
    create_table :skillnames do |t|
      t.string :name
      t.integer :power
      t.text :eff

      t.timestamps null: false
    end
  end
end
