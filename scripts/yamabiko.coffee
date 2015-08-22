# Description:
#   Hubotがやまびこ
#
# Commands:
#   hubot respond say ~ - Reply ~

# Hubotのスクリプトはモジュールとして記述し，
# Hubot起動時にrequireされてexportした関数が呼び出されます

address = 

module.exports = (robot) ->
    
    robot.respond /@*(.*) say (.+)$/i, (msg) ->
        address = msg.match[1]
        msg.send msg.match[2]
