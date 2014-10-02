rnd = ->
  return Math.floor Math.random() * 6 + 1

module.exports = (robot) ->
  robot.respond /(?:サイコロ|ダイス|dice)(.*)$/i, (msg) ->
    n = 1
    if match = /[0-9]+/.exec msg.match[1]
      n = Number match[0]
    if n <= 1
      msg.send rnd()
    else
      t = 0
      a = []
      for i in [0...n]
        r = rnd()
        t += r
        a.push r
      msg.send "#{t} (#{a.join('-')})"
