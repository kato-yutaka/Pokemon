class Buildtag < ActiveRecord::Base
	has_many :buildchecktags
  has_many :pokebuilds,through: :buildchecktags
end
