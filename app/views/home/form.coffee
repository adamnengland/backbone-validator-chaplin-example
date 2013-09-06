View = require 'views/base/view'
Form = require 'models/form'

module.exports = class FormView extends View
  autoRender: true
  className: 'form-view'
  template: require './templates/form'
  events: 
    'click a.validateButton' : "validate"

  initialize: ->
    super
    @model = new Form()

  validate: (e) ->
    @model.validate()
    e.preventDefault()