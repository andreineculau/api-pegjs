{
  createModule
} = require './_misc'
grammar = require('core-pegjs') 'ietf/draft-ietf-httpbis-p5-range'


rules = {}

mixins = [
  require('./draft-ietf-httpbis-p4-conditional')._.rules
]
module.exports = createModule {grammar, rules, mixins}
