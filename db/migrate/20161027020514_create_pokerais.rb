class CreatePokerais < ActiveRecord::Migration
  def change
    create_table :pokerais do |t|
      t.string :name
      t.string :title
      t.integer :pokedex_id
      t.integer :per_id
      t.integer :cha_id
      t.integer :wepon_id
      t.integer :raistag_id
      t.text :ex
      t.integer :com_id

      t.timestamps null: false
    end
  end
end
