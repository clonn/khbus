bunyan = require('bunyan')
request = require('request')
events = require("events")
util = require('util')

class Bus

  constructor: (config, debug) ->
    @config = config || require('./config')
    @debug = debug || false

    if @debug
      @log = bunyan.createLogger {name: config.logger}
      @log.info("hi")
    return @

  getBus: (type, callback) ->
    if typeof type is "function"
      callback = type

    @getBusAll(callback)
    return

  sliceItem: (items) ->

    items = items.split("_,")
    busList = {}
    for bus, key in items by 3
      busList[items[key + 1]] = {
        number: items[key]
        stop: items[key + 2]
      }

    return busList


  getBusAll: (callback) ->
    request {
      uri: "#{@config.endpoint}/bus/API/GetRoute.aspx"
      qs:
        Mode: 0
      method: "GET"
    }, (err, body, res) ->
      busList = Bus.prototype.sliceItem(res)
      callback(busList)
      return





# util.inherits(Bus, events.EventEmitter)
module.exports = Bus

