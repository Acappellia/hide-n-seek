scoreboard objectives add hns dummy

scoreboard objectives add hns_atk used:carrot_on_a_stick
scoreboard objectives add hns_atk_cd custom:time_since_death

scoreboard objectives add hns_summon used:warped_fungus_on_a_stick
scoreboard objectives add hns_summon_cd custom:time_since_death

scoreboard objectives add hns_entity_health dummy

scoreboard objectives add hns_xp dummy
scoreboard objectives add hns_level dummy

team add sweeper
team modify sweeper collisionRule never
team modify sweeper color aqua
team modify sweeper nametagVisibility always
team modify sweeper prefix [{"text": "[灭虫组] "}]
team modify sweeper friendlyFire false

team add bug
team modify bug collisionRule never
team modify bug color red
team modify bug nametagVisibility hideForOtherTeams
team modify bug prefix [{"text": "[爬虫组] "}]
team modify bug friendlyFire false

schedule function hns:slowtick 12t append