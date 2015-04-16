target = process.env.HUBOT_REMOTE_URL
url = require('url')
querystring = require('querystring')

module.exports = (robot) ->
  robot.router.post "/hubot/remote", (req, res) ->
    query = querystring.parse(url.parse(req.url).query)

    data =
      as_user: true
      uesrname: query.user
      icon_url: query.icon_url
      channel: query.channel
      text: query.msg

    robot.customMessage data
  
  robot.hear /.*/i, (res) ->
    robot.logger.info res
    data =
      user: res.message.user.name
      channel: res.message.room
      text: res.message.text
    robot.http(target+"/hubot/remote")
      .post(data) (err, res, body) ->
