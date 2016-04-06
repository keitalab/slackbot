# Description:
#   入退室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = "bottestroom"
room2 = "times_bot"
picture = ['http://phantom-world.com/special/twitter/icon/PW01.png',
  'http://phantom-world.com/special/twitter/icon/PW02.png',
  'http://phantom-world.com/special/twitter/icon/PW03.png',
  'http://phantom-world.com/special/twitter/icon/PW04.png'
  ]

module.exports = (robot) ->
  robot.enter (msg) ->
    if msg.envelope.room is room
      msg.send "ようこそ #{msg.message.user.name}さん、#times_bot もよろしくね"
    else if msg.envelope.room is room2
      msg.send "WELCOME TO THE PHANTOM WORLD\n" + msg.random picture
