cronJob = require('cron').CronJob

module.exports = (robot) ->
   # utility function
   #send = (room, msg) -> (new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])).send msg
   cronjob = new cronJob('0 0 10 * * 1-5', () ->
     envelope = room: "#random"
     robot.send envelope, "スタジオなう"
   )
   cronjob.start()
