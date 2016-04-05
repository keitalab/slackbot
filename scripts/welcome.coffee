# Description:
#   入退室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

room = ['bottestroom', 'times_bot']
here = msg.envelope.room

module.exports = (robot) ->
  robot.enter (msg) ->
    for i in room
      if here is room
        msg.send "ようこそ #{msg.message.user.name}-san"
