class Pokebuild < ActiveRecord::Base
  has_many :parties, dependent: :destroy
	belongs_to :user
	accepts_nested_attributes_for :parties
end
