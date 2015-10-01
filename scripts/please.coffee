# Description:
#   お願いします
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
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp/07.png",
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp6/3.jpg",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/10/web/10_stamp01.jpg",
]

module.exports = (robot) ->

  robot.hear /お願いしますです/, (msg) ->
    msg.send msg.random pictures
