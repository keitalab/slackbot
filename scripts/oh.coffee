# Description:
#   うぅ……
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   

pictures = [
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp2/01.png",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/01/web/01_stamp02.jpg",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/04/web/04_stamp03.jpg",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/06/web/06_stamp04.jpg",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/07/web/07_stamp08.jpg"
]

module.exports = (robot) ->

  robot.hear /うぅ……/, (msg) ->
    msg.send msg.random pictures
