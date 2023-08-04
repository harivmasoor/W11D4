
json.extract! @pokemon, :id, :number, :name, :imageUrl, :poke_type, :captured
json.createdAt @pokemon.created_at
json.updatedAt @pokemon.updated_at
json.moves @pokemon.moves.map(&:name)
