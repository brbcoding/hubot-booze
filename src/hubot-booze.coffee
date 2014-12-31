# Description:
#   Buy some booze for a friend
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot beer <name> - Buy a beer for <name>
#   hubot whisk(e)y <name> - Buy a whiskey for <name>
#
# Author:
#   brbcoding
#

module.exports = (robot) ->
  whiskeys = [
    "Poopy Von Wonkle"
    "Pappy Van Winkle"
    "George T. Stagg"
    "Thomas H. Handy Sazerac"
    "William Larue Weller"
    "Sazerac 18"
    "Eagle Rare 17"
    "Laphroaig 18"
    "The Glenlivet 21"
    "Talisker Storm"
    "Glenmorangie 18"
    "The Balvenie Tun 1401"
    "Benrinnes 23"
  ]

  beers = [
    "Heady Topper"
    "Pliny the Elder"
    "Bourbon County Coffee Stout"
    "Zombie Dust"
    "Chocolate Rain"
    "Trappistes Rochefort 10"
    "Lagunitas Sucks"
    "Founders KBS"
    "Miller Light"
    "Bud Select"
  ]

  robot.respond /whiske?y (.*)/i, (msg) ->
    msg.reply "buys a #{msg.random whiskeys} for #{msg.match[1].replace /^\s+|\s+$/g, ""}!"
    

  robot.respond /beer (.*)/i, (msg) ->
    msg.reply "buys a #{msg.random beers} for #{msg.match[1].replace /^\s+|\s+$/g, ""}!"