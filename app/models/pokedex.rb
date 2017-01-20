class Pokedex < ActiveRecord::Base
 self.per_page = 9
belongs_to :cha
belongs_to :egg
belongs_to :type
has_many :pokerais
has_many :parties
has_many :top
end
