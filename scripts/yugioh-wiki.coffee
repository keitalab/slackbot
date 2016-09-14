# Description:
#   チャット上で遊戯王カードWikiを検索、一枚ずつ指定なら《》でカード名を囲む　例：《青眼の白龍》
#
#   参考：
#   http://shokai.org/blog/archives/9485
#
# Commands:
#   hubot ysearch ~

module.exports = (robot) ->
    robot.respond /ysearch *(.*)$/i, (msg) ->
        url = msg.match[1]
        url_encoded = encodeURI url
        msg.send "http://yugioh-wiki.net/index.php?#{url_encoded}"
