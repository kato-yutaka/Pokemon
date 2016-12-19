class Pokedex < ActiveRecord::Base
 self.per_page = 9
has_many   :chas
belongs_to :egg
belongs_to :type
has_many :pokerais
has_many :parties
has_many :top
end
