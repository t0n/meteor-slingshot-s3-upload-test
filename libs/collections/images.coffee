@ImageDetails = new Mongo.Collection('Images', {idGeneration: 'MONGO'})

@imageById = (imageId) ->
  result =
    find:
      "_id": imageId
    options: {}
  result