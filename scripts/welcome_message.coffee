# Description:
#   入室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = "tsf_report"
picture = [
  'http://konosuba.com/special/img/stamp15.png',
  'http://konosuba.com/special/img/stamp17.png',
  'http://konosuba.com/special/img/stamp19.png'
  ]

module.exports = (robot) ->
  robot.enter (msg) ->
    if msg.envelope.room is room
      msg.send "WELCOME TO TWO SWORD FENCER'S REPORT\n" + msg.random picture
