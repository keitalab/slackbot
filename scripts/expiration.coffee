# Description:
#   コーヒーの入れた日時を記録
#
# Commands:
#   hubot teatime - 日時を記録
#   hubot notice - 日時を報告

second = 0
minute = 0
hour = 0
day = 0
month = 0


module.exports = (robot) ->
     
  robot.hear /teatime/, (msg) ->
    currentTime = new Date
    second = currentTime.getSeconds()
    minute = currentTime.getMinutes()
    hour = currentTime.getHours()
    day = currentTime.getDate()
    month = currentTime.getMonth()
    robot.brain.date = 0 unless robot.brain.date
    robot.brain.date = "#{month}月#{day}日#{hour}時#{minute}分#{second}秒"
    robot.brain.save
    msg.send "Have a nice coffee break."
  robot.hear /notice/, (msg) ->
    msg.send "このコーヒーが入れられたのは" + robot.brain.date + "です。"
