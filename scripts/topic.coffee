# Description:
#   topic変更時に通知.
# 
# Commands:
#   hubot send - Greet when changing the topic.

config = to: "times_bot"

module.exports = (robot) ->
  robot.topic (res) ->
    robot.send {room: to}"New topic: #{res.message.text} #{res.envelope.room}"
