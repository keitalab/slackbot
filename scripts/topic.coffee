# Description:
#   topic変更時に通知.
# 
# Commands:
#   hubot send - Greet when changing the topic.

module.exports = (robot) ->
  robot.topic (msg) ->
    msg.send "New topic: #{msg.message.text}"
