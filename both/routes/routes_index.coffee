Router.route "/",
  name: "index",
  waitOn: ->
    [
      Meteor.subscribe "images"
    ]
  data: ->
    images: ImageDetails.find()

Router.route "/about/",
  name: "about"


