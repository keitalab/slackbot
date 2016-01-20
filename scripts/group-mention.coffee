third_years = "@itoh14d5 @62grow2e @kataflyflat @kwzr @kogachiharu @yukikomatsu @hidekisugimoto @ryosuketakakuwa @lil @hiron @mactkg @kazumi : "
module.export = (robot) ->
  robot.hear /@3year(.*)/i, (msg) ->
    text = msg.match[1]
    robot.send "#{ third_years }#{ text }"
