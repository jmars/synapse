// Generated by CoffeeScript 1.3.3
var channels;

channels = {};

module.exports = {
  toString: Object.prototype.toString,
  getType: function(object) {
    return this.toString.call(object).match(/^\[object\s(.*)\]$/)[1];
  },
  isObject: function(object) {
    return this.getType(object) === 'Object';
  },
  isArray: function(object) {
    return this.getType(object) === 'Array';
  },
  isFunction: function(object) {
    return this.getType(object) === 'Function';
  },
  isString: function(object) {
    return this.getType(object) === 'String';
  },
  isBoolean: function(object) {
    return this.getType(object) === 'Boolean';
  }
};