# Description:
#   チャット上で遊戯王カードを検索
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
        msg.send "http://www.db.yugioh-card.com/yugiohdb/card_search.action?ope=1&sess=1&keyword=#{url_encoded}&stype=1&ctype=&starfr=&starto=&atkfr=&atkto=&deffr=&defto=&pscale=&othercon=2"
