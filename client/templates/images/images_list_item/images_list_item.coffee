Template.images_list_item.helpers

    link_url: ->
        Router.path 'image', _id: @_id.valueOf()
