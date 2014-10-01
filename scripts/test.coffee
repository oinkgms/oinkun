wait = (time) ->
    $.Deferred (defer) ->
        setTimeout ->
            defer.resolve()
        , time
delay = (time, fn, args...) ->
    setTimeout fn, time, args...

module.exports = (robot) ->
    robot.respond /test$/i, (msg) ->
        delay 1000, ->
            msg.send "TEST"
