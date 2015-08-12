require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/cd_organizer')
require('./lib/collection')
require("pry")

get('/') do
  erb(:index)
end

get('/collections') do
  @collections = Collection.all_collection()
  erb(:collections)
end

get('/collections/new') do
  erb(:collections_form)
end

post("/collections") do
  name = params.fetch("name")
  Collection.new(name).collection_save()
  @collections = Collection.all_collection()
  erb(:collections)
end

get("/collections/:collection_id") do
  @collection = Collection.collection_find(params.fetch("collection_id").to_i())
  erb(:collection)
end




get("/collections/:id/albums/new")do
  @collection = Collection.collection_find(params.fetch('id').to_i())
  erb(:album_form)
end

get('/albums') do
  @albums = Collection.all()
  erb(:albums)
end

post('/albums') do
  album_name = params.fetch("album_name")
  artist = params.fetch("artist")
  album = CD.new(album_name, artist)
  @collection = Collection.collection_find(params.fetch("collection_id").to_i())
  @collection.add_albums(album)
  erb(:collection)
end
