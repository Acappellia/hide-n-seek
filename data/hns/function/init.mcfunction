gamerule keepInventory true
gamerule naturalRegeneration false
gamerule doImmediateRespawn true

gamerule mobGriefing false
gamerule doMobLoot false
gamerule doEntityDrops false

gamerule doMobSpawning false
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false

gamerule announceAdvancements false
gamerule spawnRadius 0

gamerule doDaylightCycle false
time set 6000
gamerule doWeatherCycle false
weather clear

difficulty peaceful

scoreboard objectives add hns dummy
scoreboard objectives add hns_round dummy

scoreboard objectives add hns_atk used:carrot_on_a_stick
scoreboard objectives add hns_atk_cd custom:time_since_death

scoreboard objectives add hns_summon used:warped_fungus_on_a_stick
scoreboard objectives add hns_summon_cd custom:time_since_death

scoreboard objectives add hms_firework_cd dummy

scoreboard objectives add hns_entity_health dummy

scoreboard objectives add hns_xp dummy
scoreboard objectives add hns_level dummy

scoreboard objectives add hns_bug_death custom:time_since_death
scoreboard objectives add hns_bug_revive_cd custom:time_since_death

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

team add spec

bossbar add hiding_cd [{"text": "躲藏阶段","color": "gray"}]
bossbar set hiding_cd color blue
bossbar set hiding_cd max 600
bossbar set hiding_cd style progress
#bossbar set hiding_cd visible false

bossbar add game_cd [{"text": "剩余时间","color": "white"},{"text": " - ","color": "gray"},{"text": "60","color": "white"},{"text": ":","color": "gray"},{"text": "00","color": "white"}]
bossbar set game_cd color yellow
bossbar set game_cd max 600
bossbar set game_cd style progress
#bossbar set game_cd visible false


schedule function hns:slowtick 12t append
schedule function hns:sec_tick 20t append

execute unless score #game_status hns = #game_status hns run scoreboard players set #game_status hns 0
scoreboard players set #60 hns 60
scoreboard players set #20 hns 20