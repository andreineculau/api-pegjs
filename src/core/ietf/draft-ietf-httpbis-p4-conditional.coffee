{
  createModule
} = require './_misc'
grammar = require('core-pegjs') 'ietf/draft-ietf-httpbis-p4-conditional'


rules = {}

mixins = [
  require('./draft-ietf-httpbis-p2-semantics')._.rules
]
module.exports = createModule {grammar, rules, mixins}
