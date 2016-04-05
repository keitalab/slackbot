# Description:
#   入退室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = bottestroom
here = msg.envelope.room

module.exports = (robot) ->
  robot.enter (msg) ->
    if here is room
      msg.send "ようこそ #{msg.message.user.name}-san"
