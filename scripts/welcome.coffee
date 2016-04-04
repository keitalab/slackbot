# Description:
#   入退室時に挨拶.
# 　http://blog.manaten.net/entry/hubot-limit
# 
# Commands:
#   hubot send - Greet when entering.

_ = require 'lodash'

module.exports = (robot) ->
  robot.enter (msg) ->
    if _.contains ['bottestroom', 'times_bot'], msg.envelope.room
        msg.send "ようこそ #{msg.message.user.name}-san"
