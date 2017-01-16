CnLIYkrUEAEeWDY# Description:
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
        'http://www.tbs.co.jp/anime/oregairu/special/images/stamp/02.png',
        'http://www.tbs.co.jp/anime/oregairu/special/images/stamp7/7.jpg',
        'http://gakkougurashi.com/core_sys/images/contents/00000067/block/00000214/00000170.png?1456809773',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/02/web/02_stamp03.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/04/web/04_stamp06.jpg',
        'http://www.classroom-crisis.com/assets/img/special/15_stamp/07/web/07_stamp07.jpg',
        'https://pbs.twimg.com/media/CnLIYkrUEAEeWDY.jpg',
        'http://www.tbs.co.jp/anime/gn/special/img/stamp_03/02.png',
        'http://www.tbs.co.jp/anime/gn/special/img/stamp_03/05.png',
        'http://www.tbs.co.jp/anime/gn/special/img/stamp_03/07.png',
        'http://www.tbs.co.jp/anime/gn/special/img/stamp_03/09.png'
        ]
module.exports = (robot) ->
  # target room name
  room_name = "#times_bot"
  # every minute AM JST
  new cron '0 0 22 * * *', () =>
    picture = pictures[Math.floor(Math.random() * pictures.length)]
    robot.send {room: "#{room_name}"}, "@here " + picture
  , null, true, "Asia/Tokyo"
