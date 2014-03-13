khbus
=====

Taiwan Kaohsiung bus API - node.js client version.

##compile

it code by coffeescript, so you have to compile to javascript version first.

    npm compile

##Execute

    Bus = require("khbus")
    bus = new Bus()
    bus.getBus (data) ->
      data.should.be.an.instanceOf(Object)
      data["143"].should.eql({ number: '0北', stop: '金獅湖站－金獅湖站' })

##Origin source

data are all from Kaohsiung government, there is only a client library in Node.js, if any server issue, please send feedback to them.

    http://www.khbus.gov.tw/

