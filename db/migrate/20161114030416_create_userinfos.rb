class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|

      t.timestamps null: false
    end
  end
end
