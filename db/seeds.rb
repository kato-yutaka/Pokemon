# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pokemon_zukan'
  PokemonZukan.find_all(1..719).each do |pokedex|
 tribeValue[1] == a
  Pokedex.create(name: pokedex.name , a: pokedex.hp)
end