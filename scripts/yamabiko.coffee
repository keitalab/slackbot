# Description:
#   Hubotがやまびこ
#
# Commands:
#   hubot respond say ~ - Reply ~

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます

config = to: "#bottestroom"

module.exports = (robot) ->
    
    robot.respond /(#*.*) say (.+)$/i, (msg) ->
        if /[#][a-zA-Z0-9_\-]+/.test msg.match[1]
            to = "#{msg.match[1]}"
        else
            to = config.to
        robot.send {room: to}, msg.match[2]
