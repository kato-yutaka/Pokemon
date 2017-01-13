class Cha < ActiveRecord::Base
has_many :pokerais
has_many :paries
has_many :pokedexes
end
