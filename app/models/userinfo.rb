class Userinfo < ActiveRecord::Base
has_many :users
has_many :pokerails
has_many :paries
end
