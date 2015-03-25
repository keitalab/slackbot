url = require('url')
querystring = require('querystring')

module.exports = (robot) ->
  robot.router.post "/hubot/gollum/notify", (req, res) ->
    query = querystring.parse(url.parse(req.url).query)
    room = query.room
    path = query.path
    type = query.type
    type = query.type

    if type == "new"

    robot.messageRoom room, "I got message: #{msg}"

    res.end ""
