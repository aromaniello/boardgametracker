User.delete_all
Boardgame.delete_all

user = User.create!(email: "bixon@example.com", username: "bixon", password: "testpass", password_confirmation: "testpass")

bg = user.boardgames.new
bg.name = "Gloomhaven"
bg.year_published = 2017
bg.min_players = 1
bg.max_players = 4
bg.min_playing_time = 60
bg.max_playing_time = 120
bg.min_age = 12
bg.image_url = "https://cf.geekdo-images.com/original/img/lDN358RgcYvQfYYN6Oy2TXpifyM=/0x0/pic2437871.jpg"
bg.thumbnail_url = "https://cf.geekdo-images.com/thumb/img/e7GyV4PaNtwmalU-EQAGecwoBSI=/fit-in/200x150/pic2437871.jpg"
bg.description = "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. Players must work together out of necessity to clear out menacing dungeons and forgotten ruins. In the process, they will enhance their abilities with experience and loot, discover new locations to explore and plunder, and expand an ever-branching story fueled by the decisions they make.

This is a game with a persistent and changing world that is ideally played over many game sessions. After a scenario, players will make decisions on what to do, which will determine how the story continues, kind of like a “Choose Your Own Adventure” book. Playing through a scenario is a cooperative affair where players will fight against automated monsters using an innovative card system to determine the order of play and what a player does on their turn.

Each turn, a player chooses two cards to play out of their hand. The number on the top card determines their initiative for the round. Each card also has a top and bottom power, and when it is a player’s turn in the initiative order, they determine whether to use the top power of one card and the bottom power of the other, or vice-versa. Players must be careful, though, because over time they will permanently lose cards from their hands. If they take too long to clear a dungeon, they may end up exhausted and be forced to retreat."
bg.save!

bg = user.boardgames.new
bg.name = "Gaia Project"
bg.year_published = 2017
bg.min_players = 1
bg.max_players = 4
bg.min_playing_time = 60
bg.max_playing_time = 150
bg.min_age = 12
bg.image_url = "https://cf.geekdo-images.com/original/img/FpQ2ODFHSgDGfEpskL0Uu2xyYMA=/0x0/pic3763556.jpg"
bg.thumbnail_url = "https://cf.geekdo-images.com/thumb/img/5P9XdMqgHu8f56SlenLalqSK_GU=/fit-in/200x150/pic3763556.jpg"
bg.description = "Gaia Project is a new game in the line of Terra Mystica. As in the original Terra Mystica, fourteen different factions live on seven different kinds of planets, and each faction is bound to their own home planets, so to develop and grow, they must terraform neighboring planets into their home environments in competition with the other groups. In addition, Gaia planets can be used by all factions for colonization, and Transdimensional planets can be changed into Gaia planets.

All factions can improve their skills in six different areas of development — Terraforming, Navigation, Artificial Intelligence, Gaiaforming, Economy, Research — leading to advanced technology and special bonuses. To do all of that, each group has special skills and abilities.

The playing area is made of ten sectors, allowing a variable set-up and thus an even bigger replay value than its predecessor Terra Mystica. A two-player game is hosted on seven sectors."
bg.save!

bg = user.boardgames.new
bg.name = "Scythe"
bg.year_published = 2016
bg.min_players = 1
bg.max_players = 5
bg.min_playing_time = 90
bg.max_playing_time = 115
bg.min_age = 14
bg.image_url = "https://cf.geekdo-images.com/original/img/enxCZt0Cn78-rlvmPvGtOej1ios=/0x0/pic3163924.jpg"
bg.thumbnail_url = "https://cf.geekdo-images.com/thumb/img/ZpuWhZuKrFry__SY8CTRuQp35rk=/fit-in/200x150/pic3163924.jpg"
bg.description = "It is a time of unrest in 1920s Europa. The ashes from the first great war still darken the snow. The capitalistic city-state known simply as “The Factory”, which fueled the war with heavily armored mechs, has closed its doors, drawing the attention of several nearby countries.

Scythe is an engine-building game set in an alternate-history 1920s period. It is a time of farming and war, broken hearts and rusted gears, innovation and valor. In Scythe, each player represents a character from one of five factions of Eastern Europe who are attempting to earn their fortune and claim their faction's stake in the land around the mysterious Factory. Players conquer territory, enlist new recruits, reap resources, gain villagers, build structures, and activate monstrous mechs.

Each player begins the game with different resources (power, coins, combat acumen, and popularity), a different starting location, and a hidden goal. Starting positions are specially calibrated to contribute to each faction’s uniqueness and the asymmetrical nature of the game (each faction always starts in the same place).

Scythe gives players almost complete control over their fate. Other than each player’s individual hidden objective card, the only elements of luck or variability are “encounter” cards that players will draw as they interact with the citizens of newly explored lands. Each encounter card provides the player with several options, allowing them to mitigate the luck of the draw through their selection. Combat is also driven by choices, not luck or randomness.

Scythe uses a streamlined action-selection mechanism (no rounds or phases) to keep gameplay moving at a brisk pace and reduce downtime between turns. While there is plenty of direct conflict for players who seek it, there is no player elimination.

Every part of Scythe has an aspect of engine-building to it. Players can upgrade actions to become more efficient, build structures that improve their position on the map, enlist new recruits to enhance character abilities, activate mechs to deter opponents from invading, and expand their borders to reap greater types and quantities of resources. These engine-building aspects create a sense of momentum and progress throughout the game. The order in which players improve their engine adds to the unique feel of each game, even when playing one faction multiple times."
bg.save!
