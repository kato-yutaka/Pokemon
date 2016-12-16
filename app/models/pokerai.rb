class Pokerai < ActiveRecord::Base
	belongs_to :user
	belongs_to :pokedex
	belongs_to :wepon
	belongs_to :per
	belongs_to :cha
        belongs_to :userinfo
        belongs_to :top
	has_many :coms, dependent: :destroy
	has_many :raischecktags, dependent: :destroy
        has_many :raistags,through: :raischecktags
        has_many :skills, dependent: :destroy
	has_many :skillnames,through: :skills, dependent: :destroy
        accepts_nested_attributes_for :skills
        accepts_nested_attributes_for :coms
        accepts_nested_attributes_for :raischecktags
end
