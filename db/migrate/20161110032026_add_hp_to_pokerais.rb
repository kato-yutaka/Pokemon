class AddHpToPokerais < ActiveRecord::Migration
  def change
    add_column :pokerais, :hp, :integer
    add_column :pokerais, :atk, :integer
    add_column :pokerais, :def, :integer
    add_column :pokerais, :satk, :integer
    add_column :pokerais, :sdef, :integer
    add_column :pokerais, :spd, :integer
  end
end
