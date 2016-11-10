class Raistag < ActiveRecord::Base
	has_many :raischecktags
  has_many :pokerais,through: :raischecktags
end
