class AddSumToPokerais < ActiveRecord::Migration
  def change
    add_column :pokerais, :sum, :integer
  end
end
