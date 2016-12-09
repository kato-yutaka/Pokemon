class Pokedex < ActiveRecord::Base
has_many   :chas
belongs_to :egg
belongs_to :type
has_many :pokerais
has_many :parties
end
