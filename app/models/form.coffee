BaseModel = require 'models/base/model'

module.exports = class Form extends BaseModel
  validation :
    name:
      required: true
    email:
      required: true
      pattern: "email"
