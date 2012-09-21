Core = require 'synapse/core'
Data = require 'data'

module.exports =
  typeName: 'Data Node'
  checkObjectType: (object) ->
    object.types? and object.properties? and object._id? and object.host?
  getHandler: (object, key) ->
    object.get key
  setHandler: (object, key, value) ->
    props = {}
    props[key] = value
    object.set props
  onEventHandler: (object, event, handler) ->
    object.on event, handler
  offEventHandler: (object, event, handler) ->
    object.off event, handler
  triggerEventHandler: (object, event) ->
    object.trigger event
  detectEvent: (object, iface) -> 'change'