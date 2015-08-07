# Description:
#   Hubotと挨拶.
#
# Commands:
#   hubot hear おーい - Reply with うい

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます
module.exports = (robot) ->
  robot.hear /おーい$/i, (msg) ->
    msg.send "うい"
