class Pokedex < ActiveRecord::Base
has_many   :chas
belongs_to :egg
belongs_to :type
end
