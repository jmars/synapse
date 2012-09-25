channels = {}

module.exports = {
    toString: Object.prototype.toString

    getType: (object) ->
        @toString.call(object).match(/^\[object\s(.*)\]$/)[1]

    isObject: (object) ->
        @getType(object) is 'Object'

    isArray: (object) ->
        @getType(object) is 'Array'

    isFunction: (object) ->
        @getType(object) is 'Function'

    isString: (object) ->
        @getType(object) is 'String'

    isBoolean: (object) ->
        @getType(object) is 'Boolean'
}