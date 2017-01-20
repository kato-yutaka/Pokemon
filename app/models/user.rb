class User < ActiveRecord::Base
 has_many :pokerais
 has_many :pokebuilds
 belongs_to :userinfo
 belongs_to :top

 validates :name, presence: true, uniqueness: true 
 validates :email, presence: true, uniqueness: true
 validates :password, presence: true
 


def self.authenticate(email,password)
    usr = find_by(email: email)
    if usr != nil && usr.password == password then
       usr
    else
       return
   end
end
end
