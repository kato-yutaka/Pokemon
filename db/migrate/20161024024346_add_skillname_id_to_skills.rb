class AddSkillnameIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :skillname_id, :integer
  end
end
