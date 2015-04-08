# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ごはん決めて - ごはん決めます

module.exports = (robot) ->
  robot.respond /ごはん決めて$/i, (msg) ->
    msg.send "ちょっと自分で決めてよ〜"
