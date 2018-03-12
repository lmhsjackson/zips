require 'mongo'
require 'pry'

client = Mongo::Client.new('mongodb://localhost:27017')
client = client.use 'test'
binding.pry
client.database.name
client.database.collection_names
client[:zips].find.first.to_a
