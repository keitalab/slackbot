# Description:
#   格言をくれる
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
  "http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000016/block/00000025/00000008.png?1443266345",
  "http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000049/block/00000137/00000105.png?1443266366",
  "http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000055/block/00000158/00000126.png?1443266371",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/03/web/03_stamp06.jpg",
  "http://www.classroom-crisis.com/assets/img/special/15_stamp/06/web/06_stamp02.jpg",
]

module.exports = (robot) ->

  robot.respond /今日の格言/, (res) ->
    res.send res.random pictures
