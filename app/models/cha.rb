class Cha < ActiveRecord::Base
belongs_to :pokedex
 has_many :pokerais
end
