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
p =  "db/pokedex_image/t#{format("%03d", a) }.png"
Pokedex.create(name: pokedex.name ,  hp: pokedex.tribeValue[0] , atk: pokedex.tribeValue[1] ,  def: pokedex.tribeValue[2] , satk: pokedex.tribeValue[3], sdef: pokedex.tribeValue[4] , spd: pokedex.tribeValue[5], pic_data: File.open(p, "rb").read )
a = a + 1


#PokemonZukan.find_all(1..719).each do |pokedex|
#p = "#{Rails.root}/db/pokedex_image/t001.jpeg"
#Pokedex.create(pic_data: File.read("db/pokedex_image/t001.jpeg") )
#Pokedex.create(name: "kato" ,  hp: 0 , atk: 0 ,  def: 0 , satk: 0, sdef: 0 , spd: 0, pic_data: File.read(p) )


#Pokedex.create(name: pokedex.name ,  hp: pokedex.tribeValue[0] , atk: pokedex.tribeValue[1] ,  def: pokedex.tribeValue[2] , satk: pokedex.tribeValue[3], sdef: pokedex.tribeValue[4] , spd: pokedex.tribeValue[5])
end

