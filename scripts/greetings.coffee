fuzzy = (s) ->
  return new RegExp ".*?#{s}.*", "i"

module.exports = (robot) ->
  robot.respond fuzzy("ありがとう"), (msg) ->
    msg.send "よきにはからえ"
