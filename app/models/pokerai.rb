class Pokerai < ActiveRecord::Base
	belongs_to :user
	belongs_to :pokedex
	belongs_to :wepon
	belongs_to :per
	belongs_to :cha
	has_many :coms
	has_many :raischecktags
  has_many :raistags,through: :raischecktags
  has_many :skills
	has_many :skillnames,through: :skills
  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :coms
end