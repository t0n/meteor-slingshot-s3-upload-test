uploader = new ReactiveVar

Template.imageUploader.helpers

  isUploading: ->
    Boolean uploader.get()

  progress: ->
    upload = uploader.get()
    if upload
      return Math.round(upload.progress() * 100)
    return

  uploaded_image: ->
    ImageDetails.findOne {}, sort:
      timestamp: -1

Template.imageUploader.events

  'change .uploadFile': (event, template) ->
    event.preventDefault()
    upload = new (Slingshot.Upload)('myImageUploads')
    timestamp = Math.floor(Date.now())
    upload.send document.getElementById('uploadFile').files[0], (error, download_url) ->
      uploader.set()
      if error
        console.error 'Error during uploading'
        console.error error
        alert error
      else
        console.log 'uploaded file available here: ' + download_url
        Meteor.call 'addImage', download_url, timestamp
      return
    uploader.set upload
