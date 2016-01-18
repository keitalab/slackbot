# Description:
#   check laboratory is crowded
#
# Commands:
#   hubot 人居る? - 人居るか見てみます
request = require 'request'

module.exports = (robot) ->
  robot.hear /(人|ひと)(い|居)る\?*$/, (msg) ->
    console.log(msg)
    request 'http://wedata.net/items/77781.json', (_, res) ->
      body = JSON.parse(res.body)
      console.log(body)
      msg.send body.data.crowd + "らしいです(" + body.updated_at + ")"

