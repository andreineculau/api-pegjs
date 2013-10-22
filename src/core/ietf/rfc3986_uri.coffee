{
  buildParser
} = require './_misc'
PEG = require('core-pegjs')['ietf/rfc3986_uri']


startRules = [
  'URI'
  'URI_reference'
  'authority'
  'relative_ref'
  'absolute_URI'
]


rules =
  URI: () ->
    hier_part = __result[2]
    {
      __type: __ruleName
      scheme: __result[0]
      slashes: hier_part.slashes
      authority: hier_part.authority
      path: hier_part.path
      query: __result[3]?[1]
      fragment: __result[4]?[1]
    }


  hier_part: [
    () ->
      {
        __type: __ruleName
        slashes: __result[0]
        authority: __result[1]
        path: __result[2]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
  ]


  authority: () ->
    {
      __type: __ruleName
      userinfo: __result[0]?[0]
      hostname: __result[1]
      port: __result[2]?[1]
    }


  relative_ref: () ->
    relative_part = __result[0]
    {
      __type: __ruleName
      slashes: relative_part.slashes
      authority: relative_part.authority
      path: relative_part.path
      query: __result[1]?[1]
      fragment: __result[1]?[1]
    }


  relative_part: [
    () ->
      {
        __type: __ruleName
        slashes: __result[0]
        authority: __result[1]
        path: __result[2]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
    () ->
      {
        __type: __ruleName
        path: __result[0]
      }
  ]


  reg_name: () ->
    reg_name = __result[0]
    # Naïve filtering of pseudonyms i.e. draft_ietf_httpbis_p1_messaging#received_by
    return null  unless reg_name is 'localhost' or reg_name.indexOf('.') > -1
    reg_name


  absolute_URI: () ->
    {
      __type: __ruleName
      scheme: __result[0]
      hier_part: __result[2]
      query: __result[3]?[1]
    }


module.exports = buildParser {PEG, rules, startRules}
