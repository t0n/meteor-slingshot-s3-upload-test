Slingshot.fileRestrictions 'myImageUploads',
  allowedFileTypes: [
    'image/png'
    'image/jpeg'
    'image/gif'
  ]
  maxSize: 2 * 1024 * 1024

Slingshot.createDirective 'myImageUploads', Slingshot.S3Storage,
  AWSAccessKeyId: Meteor.settings.AWSAccessKeyId
  AWSSecretAccessKey: Meteor.settings.AWSSecretAccessKey
  bucket: Meteor.settings.S3BucketName
  acl: 'public-read'
  region: Meteor.settings.S3Region
  authorize: ->
# if (!this.userId) {
#     var message = "Please login before posting images";
#     throw new Meteor.Error("Login Required", message);
# }
    true
  key: (file) ->
# var currentUserId = Meteor.user().emails[0].address;
    file.name
