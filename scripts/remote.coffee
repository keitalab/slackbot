target = process.env.HUBOT_REMOTE_URL
url = require('url')

module.exports = (robot) ->
  robot.router.post "/hubot/remote", (req, res) ->
    q = req.body
    robot.logger.info q

    data =
      username: q.user
      icon_url: q.icon_url
      channel: q.channel
      text: q.text

  robot.emit 'slack.attachment', data

  robot.hear /.*/i, (res) ->
    robot.logger.info res
    data =
      user: res.message.user.name
      room: res.message.room
      text: res.message.text
    robot.http(target+"/hubot/remote")
      .post(data) (err, res, body) ->
        robot.logger.info res
        robot.logger.info err
