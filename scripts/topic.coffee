# Description:
#   topic変更時に通知.
# 
# Commands:
#   hubot send - Greet when changing the topic.

module.exports = (robot) ->
  robot.topic (res) ->
    res.send "【重要】 #{res.message.text}"
