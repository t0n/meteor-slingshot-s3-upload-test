Router.configure
  layoutTemplate: 'defaultLayout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'

Router.plugin 'dataNotFound',
  notFoundTemplate: 'notFound'

Router.onBeforeAction('loading')