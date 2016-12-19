class Top < ActiveRecord::Base
has_many :pokerais
belongs_to :pokedex
has_many :users
end
