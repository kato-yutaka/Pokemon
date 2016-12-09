class Skillname < ActiveRecord::Base
self.inheritance_column = :_type_disabled
	has_many :skills
	has_many :buildskills
 has_many :pokerais, through: :skills
 has_many :parties, through: :buildskills
end
