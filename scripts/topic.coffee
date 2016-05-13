# Description:
#   topic変更時に通知.
# 
# Commands:
#   hubot send - Greet when changing the topic.

config = to: "#times_bot"

module.exports = (robot) ->
  robot.topic (msg) ->
    to = config.to
    robot.send {room: to}, "New topic: #{msg.message.text}"
