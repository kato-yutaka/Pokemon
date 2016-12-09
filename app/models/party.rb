class Party < ActiveRecord::Base
  belongs_to :pokedex
	belongs_to :cha
  belongs_to :userinfo
  belongs_to :pokebuild
  belongs_to :per
	belongs_to :wepon
  has_many :buildskills, dependent: :destroy
	has_many :skillnames,through: :buildskills, dependent: :destroy
  accepts_nested_attributes_for :buildskills
end
