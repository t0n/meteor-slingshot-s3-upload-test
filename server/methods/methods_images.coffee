Meteor.methods

  'addImage': (download_url, timestamp) ->
    ImageDetails.insert
      url: download_url,
      timestamp: timestamp

