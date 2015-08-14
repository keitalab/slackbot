# Description:
#   なるほど
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
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp4/5.jpg",
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp4/6.jpg",
]

module.exports = (robot) ->

  robot.hear /なるほど/, (msg) ->
    msg.send msg.random pictures
