# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pokemon_zukan'
require 'csv'





a = 1
PokemonZukan.find_all(1..718).each do |pokedex|
Pokedex.create(name: pokedex.name ,  hp: pokedex.tribeValue[0] , atk: pokedex.tribeValue[1] ,  def: pokedex.tribeValue[2] , satk: pokedex.tribeValue[3], sdef: pokedex.tribeValue[4] , spd: pokedex.tribeValue[5])
a = a + 1


#PokemonZukan.find_all(1..719).each do |pokedex|
#p = "#{Rails.root}/db/pokedex_image/t001.jpeg"
#Pokedex.create(pic_data: File.read("db/pokedex_image/t001.jpeg") )
#Pokedex.create(name: "kato" ,  hp: 0 , atk: 0 ,  def: 0 , satk: 0, sdef: 0 , spd: 0, pic_data: File.read(p) )


#Pokedex.create(name: pokedex.name ,  hp: pokedex.tribeValue[0] , atk: pokedex.tribeValue[1] ,  def: pokedex.tribeValue[2] , satk: pokedex.tribeValue[3], sdef: pokedex.tribeValue[4] , spd: pokedex.tribeValue[5])
end

CSV.foreach('db/tnum.csv') do |row|
  pokedex = Pokedex.find(row[0])
  pokedex.update(egg_id: row[1])
end

CSV.foreach('db/typed.csv') do |row|
  pokedex = Pokedex.find(row[0])
  pokedex.update(type_id: row[1])
end
