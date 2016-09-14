# Description:
#   チャット上でgoogle検索
#
#   参考：
#   http://shokai.org/blog/archives/9485
#
# Commands:
#   hubot google ~

module.exports = (robot) ->
    robot.respond /google *(.*)$/i, (msg) ->
        url = msg.match[1]
        url_encoded = encodeURI url
        msg.send "https://www.google.co.jp/webhp?hl=ja#hl=ja&q=#{url_encoded}"
