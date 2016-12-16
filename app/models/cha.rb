class Cha < ActiveRecord::Base
belongs_to :pokedex
 has_many :pokerais
has_many :paries
end
