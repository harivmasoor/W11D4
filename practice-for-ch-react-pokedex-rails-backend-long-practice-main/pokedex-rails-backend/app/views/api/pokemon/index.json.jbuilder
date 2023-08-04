 json.array! @pokemon, :id, :number, :name, :image_url, :captured



json.set @pokemon do |pokemon|
    json.id pokemon.id
    json.number pokemon.number
    json.name pokemon.name
    if pokemon.captured
      json.imageUrl pokemon.image_url
    else
      json.imageUrl "/images/unknown.png"
    end
  end
