# Description:
#   Hubotがやまびこ
#
# Commands:
#   hubot respond say ~ - Reply ~

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます

module.exports = (robot) ->
    
    robot.respond /(#*.*) say (.+)$/i, (msg) ->
        to = 'msg.match[1]'
        msg.send {room: to}, msg.match[2]
