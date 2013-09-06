Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
FormView = require 'views/home/form'

module.exports = class HomeController extends Controller

  form: ->
    @view = new FormView region: 'main'
