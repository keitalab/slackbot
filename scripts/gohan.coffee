# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ごはん決めて - ごはん決めます

yaml = require 'js-yaml'
fs = require 'fs'
gohans = yaml.load(fs.readFileSync('data/gohans.yml'))

Array::shuffle = -> @sort -> 0.5 - Math.random()

module.exports = (robot) ->
  robot.respond /(ごはん|ご飯)決めて$/i, (msg) ->
    msg.send '自分で決めてよ〜〜'

  robot.respond /ごはん決めて (.*)$/i, (msg) ->
    if msg.match[1]?
        options = msg.match[1].split(' ')
        rests = options
            .filter (i) -> i of gohans
        rests = rests
            .map (i) -> gohans[i]
        if rests.length > 0
            rests = rests
                .reduce (t, s) -> s.join(t)
            msg.send rests.shuffle()[0] + ' に行って下さい'
            return

    msg.send 'この中から選んでよ〜〜'
    for option of gohans
        msg.send '- ' + option
