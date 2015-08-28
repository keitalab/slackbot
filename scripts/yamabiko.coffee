# Description:
#   Hubotがやまびこ
#
# Commands:
#   hubot respond say ~ - Reply ~

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます

module.exports = (robot) ->
    
    robot.respond /(#*.*) say (.+)$/i, (msg) ->
        if /[#][a-zA-Z0-9_\-]+/.test msg.match[1]
            envelope = room: "#{msg.match[1]}"
        else
            envelope = room: "#bottestroom"
        msg.send envelope, msg.match[2]
