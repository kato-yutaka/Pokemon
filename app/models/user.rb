class User < ActiveRecord::Base
 has_many :pokerais
 belongs_to :userinfo


def self.authenticate(email,password)
    usr = find_by(email: email)
    if usr != nil && usr.password == password then
       usr
    else
       return
   end
end
end
