json.extract! pokedex, :id, :name, :hp, :atk, :def, :satk, :sdef, :spd, :eco, :egg_id, :type_id, :pic, :pic_data, :created_at, :updated_at
json.url pokedex_url(pokedex, format: :json)