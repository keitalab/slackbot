# Description:
#   cronのtest.
#
# Commands:
#   hubot send - currenttime

cron = require('cron').CronJob

module.exports = (robot) ->
  # target room name
  room_name = "#bottestroom"
  # every minute AM JST
  new cron '0 * * * * *', () =>
    currentTime = new Date
    hour = currentTime.getHours()
    minute = currentTime.getMinutes()
    robot.send {room: "#{room_name}"}, "#{hour}時#{minute}分です。"
  , null, true, "Asia/Tokyo"
