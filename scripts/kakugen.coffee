# Description:
#   時間に応じて通知
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
        'http://www.tbs.co.jp/anime/oregairu/special/images/stamp8/3.jpg',
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000016/block/00000025/00000008.png?1443266345',
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000049/block/00000137/00000105.png?1443266366',
        'http://cdn.nbcuni.co.jp/gakkougurashi.com/core_sys/images/contents/00000055/block/00000158/00000126.png?1443266371',
        'http://gakkougurashi.com/core_sys/images/contents/00000067/block/00000210/00000165.png?1456809773',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/03/web/03_stamp03.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/03/web/03_stamp06.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/06/web/06_stamp02.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/12/web/12_stamp01.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/12/web/12_stamp04.jpg',
        'http://phantom-world.com/special/episodeIcon/episode05/05.png'
        ]

module.exports = (robot) ->
  # target room name
  room_name = "#times_bot"
  # every minute AM JST
  new cron '0 0 8 * * *', () =>
    picture = pictures[Math.floor(Math.random() * pictures.length)]
    robot.send {room: "#{room_name}"}, "今日の格言 " + picture
  , null, true, "Asia/Tokyo"
