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

pictures = [
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp/01.png"
  "http://www.tbs.co.jp/anime/oregairu/special/images/stamp/02.png"
  "http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000023/block/00000048/00000034.png?1439004773"
  "http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000039/block/00000102/00000073.png?1439004778"
]

module.exports = (robot) ->

  robot.hear /おやすみ/, (msg) ->
    msg.send msg.random pictures
