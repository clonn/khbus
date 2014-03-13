should = require('should')
Bus = require("../index")

describe 'Init bus function', () ->
  it ', get all bus type', (done) ->

    bus = new Bus()
    bus.getBus (data) ->
      data.should.be.an.instanceOf(Object)
      data["143"].should.eql({ number: '0北', stop: '金獅湖站－金獅湖站' })
      done()

