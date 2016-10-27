# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"
CSV.foreach('db/skillname.csv') do |row|
  Skillname.create(:name => row[0],:type => row[1],:category => row[2],:power => row[3],:hit => row[4],:pp => row[5],:direct => row[6],:target => row[7],:eff => row[8],)
end