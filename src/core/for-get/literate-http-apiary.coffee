{
  _
  createModule
} = require '../_misc'
grammar = require('core-pegjs') 'for-get/literate-http-apiary'


rules = {}

mixins = [
  require('./literate-http')._.rules
]

module.exports = createModule {grammar, rules, mixins}
