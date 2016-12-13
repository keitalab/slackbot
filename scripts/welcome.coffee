# Description:
#   入退室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = "bottestroom"
room2 = "times_bot"
picture = ['http://konosuba.com/1st/special/img/stamp10.png',
  'http://konosuba.com/1st/special/img/stamp11.png',
  'http://konosuba.com/1st/special/img/stamp12.png'
  ]

module.exports = (robot) ->
  robot.enter (msg) ->
    if msg.envelope.room is room
      msg.send "ようこそ #{msg.message.user.name}さん"
    else if msg.envelope.room is room2
      msg.send "WELCOME TO THE ACCELERATED WORLD\n" + msg.random picture
