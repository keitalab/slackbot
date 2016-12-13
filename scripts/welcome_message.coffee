# Description:
#   入室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = "tsf_report"
picture = [
  'http://www.classroom-crisis.com/assets/img/special/15_stamp/01/web/01_stamp01.jpg',
  'http://www.flyingwitch.jp/images/special/tw_stamp/1-1.png',
  'http://www.tbs.co.jp/anime/gn/special/img/stamp_02/08.png'
  ]

module.exports = (robot) ->
  robot.enter (msg) ->
    if msg.envelope.room is room
      msg.send "WELCOME TO TWO SWORD FENCER'S REPORT\n" + msg.random picture
