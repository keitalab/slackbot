# Description:
#   cronのtest.
#
# Commands:
#   hubot send - currenttime

cron = require('cron').CronJob

pictures = [
        'test中です',
        'test中ですよ'
        ]

module.exports = (robot) ->
  # target room name
  room_name = "#bottestroom"
  # every minute AM JST
  new cron '0 * * * * *', () =>
    i = Math.floor(Math.random() * pictures.length)
    picture = pictures[i]
    robot.send {room: "#{room_name}"}, "#times_botでも" + picture
    if i is 0
      robot.send {room: "#times_bot"}, picture
  , null, true, "Asia/Tokyo"
