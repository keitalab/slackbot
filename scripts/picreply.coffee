# Description:
#   画像リプテスト
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   

pictures = 
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp/01.png"

module.exports = (robot) ->

  robot.hear /おやすみ/, (msg) ->
    msg.send pictures
