class AddPicDataToPokerais < ActiveRecord::Migration
  def change
    add_column :pokerais, :pic_data, :binary
  end
end
