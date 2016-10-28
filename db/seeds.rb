# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pokemon_zukan'
require 'csv'

CSV.foreach('db/skillname.csv') do |row|
  Skillname.create(:name => row[0], :type => row[1], :category => row[2], :power => row[3], :hit => row[4], :pp => row[5], :direct => row[6], :target => row[7], :eff => row[8])
end
CSV.foreach('db/type.csv') do |row|
  Type.create(:name => row[0])
end
CSV.foreach('db/type.csv') do |row|
  Type.create(:name => row[0])
end
CSV.foreach('db/tool.csv') do |row|
  Wepon.create(:name => row[0], :eff => row[1], :get => row[2])
end
CSV.foreach('db/cha.csv') do |row|
  Cha.create(:name => row[0], :ex => row[1])
end
CSV.foreach('db/egg.csv') do |row|
  Egg.create(:name => row[0])
end
CSV.foreach('db/per.csv') do |row|
  Per.create(:name => row[0], :up => row[1], :down => row[2])
end

  PokemonZukan.find_all(1..719).each do |pokedex|

  Pokedex.create(name: pokedex.name)
end
