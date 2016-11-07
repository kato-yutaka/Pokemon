class RemoveComIdFromPokerais < ActiveRecord::Migration
  def change
    remove_column :pokerais, :com_id, :integer
  end
end
