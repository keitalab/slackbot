# Description:
#   cronのtest.
#
# Commands:
#   hubot send - currenttime
cronJob = require('cron').CronJob

module.exports = (robot) ->
  send = (room, msg) ->
    response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
    response.send msg
    
  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('0 0 * * * *', () ->
    currentTime = new Date
    hour = currentTime.getHours()
    minute = currentTime.getMinutes()
    send '#bottestroom', "#{hour}時#{minute}分です。"
  ).start()
