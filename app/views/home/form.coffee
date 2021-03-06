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

  attach: ->
    super
    Backbone.Validation.bind(@);

  validate: (e) ->
    @model.set
      'name' : @$el.find('.name').val()
      'email' : @$el.find('.email').val()
      'phone' : @$el.find('.phone').val()
    console.log @model.validate()
    e.preventDefault()