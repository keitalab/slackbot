# 冒頭のコメントは必須ではありませんが，入れておくとhelpコマンドにリストアップされます
# Description:
#   
#
# Commands:
#   hubot check - Reply envelopement

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます
module.exports = (robot) ->
  robot.respond /info/i, (msg) ->
    msg.send "you're #{msg.message.user.name} at #{msg.envelope.room}"
