class AddTypeToSkillnames < ActiveRecord::Migration
  def change
    add_column :skillnames, :type, :string
		add_column :skillnames, :category, :string
		add_column :skillnames, :hit, :integer
		add_column :skillnames, :pp, :integer
		add_column :skillnames, :direct, :string
		add_column :skillnames, :target, :string 
 end
end
