class Pokebuild < ActiveRecord::Base
  has_many :parties, dependent: :destroy
	belongs_to :user
	accepts_nested_attributes_for :parties
	has_many :buildchecktags, dependent: :destroy
  has_many :buildtags,through: :buildchecktags
	has_many :coms, dependent: :destroy
  accepts_nested_attributes_for :buildchecktags
end
