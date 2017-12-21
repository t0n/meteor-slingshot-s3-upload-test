Router.route "/images/:_id/",
  name: "image",
  waitOn: ->
    [
      Meteor.subscribe "imageById", new Meteor.Collection.ObjectID(@params._id)
    ]
  data: ->
    oid = new Meteor.Collection.ObjectID(@params._id)

    image: ImageDetails.findOne
      _id: oid