class ChangeUserIdTypeInPokerais < ActiveRecord::Migration
  def change
change_column :pokerais, :user_id, :integer
  end
end
