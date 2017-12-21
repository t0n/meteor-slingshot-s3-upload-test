Meteor.publish 'images', () ->
  ImageDetails.find {}

Meteor.publish 'imageById', (imageId) ->
  ImageDetails.find imageById(imageId).find, imageById(imageId).options
