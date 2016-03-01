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

cron = require('cron').CronJob

pictures = [
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000016/block/00000025/00000008.png?1443266345',
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000049/block/00000137/00000105.png?1443266366',
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000055/block/00000158/00000126.png?1443266371',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/03/web/03_stamp06.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/06/web/06_stamp02.jpg'
        ]

module.exports = (robot) ->
  # target room name
  room_name = "#bottestroom"
  # every minute AM JST
  new cron '0 0 18 * * *', () =>
    picture = pictures[Math.floor(Math.random() * pictures.length)]
    robot.send {room: "#{room_name}"}, "今日の格言 " + picture
  , null, true, "Asia/Tokyo"
