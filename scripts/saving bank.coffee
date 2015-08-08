# Description:
#   貯金箱残金確認
#
# Commands:
#   hubot hear into x yen - into x yen.
#   hubot hear out of x yen - out of x yen.
#   hubot hear check in box - check the saving bank.

module.exports = (robot) ->
 
  robot.hear /into (\d+) yen/, (msg) ->
    robot.brain.data.count = 0 unless robot.brain.data.count
    robot.brain.data.count = robot.brain.data.count + parseInt(msg.match[1], 10)
    robot.brain.save
    msg.send "now in " + robot.brain.data.count + " yen."
    
  robot.hear /out of (\d+) yen/, (msg) ->
    robot.brain.data.count = 0 unless robot.brain.data.count
    robot.brain.data.count = robot.brain.data.count - parseInt(msg.match[1], 10)
    robot.brain.save
    msg.send "now in " + robot.brain.data.count + " yen."
    
  robot.hear /check in box/, (msg) ->
    msg.send "now in " + robot.brain.data.count + " yen."
